import { User } from "../entity/User";
import { OTPCode } from "../entity/OTPCode";
import { Arg, Ctx, Field, Mutation, ObjectType, Query, Resolver, UseMiddleware } from "type-graphql";
import { create } from "njwt";
import crypto = require('crypto');
import { MyContext } from "../types";
import { isAuth } from "../middleware/isAuth";
import { sendEmail } from "../utils/sendEmail";

function isSotonEmail(email: String): boolean {
    return email.match('[^@]*@(?:soton|southampton)\.ac\.uk')?.length === 1 ?? false;
}

function randomString(length: number, chars: string) {
    var result = '';
    for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
    return result;
}


function randomCode() {
    return randomString(6, '0123456789ABCDEFGHIJKLMNPQRSTUVWXYZ');
}


@ObjectType()
class AuthTokenResponse {
    @Field({ nullable: true })
    errorMessage?: String;

    @Field({ nullable: true })
    authToken?: String;

    @Field(() => Boolean)
    success: Boolean;
}

@ObjectType()
class DeleteAccountResponse {

    @Field(() => Boolean)
    success: Boolean;
}

@ObjectType()
class AuthCodeResponse {
    @Field({ nullable: true })
    errorMessage?: string;

    @Field(() => Boolean)
    success: Boolean;
}


@ObjectType()
class UserResponse {
    @Field(() => User, { nullable: true })
    user?: User;

    @Field(() => Boolean)
    success: boolean;

}

@Resolver()
export class UserResolver {
    @Query(() => UserResponse)
    @UseMiddleware(isAuth)
    async getUser(
        @Ctx() context: MyContext,
    ): Promise<UserResponse> {
        return {
            user: context.user,
            success: context.user != null,
        }
    }

    @Mutation(() => AuthCodeResponse)
    async sendAuthCode(
        @Arg('email') email: string,
    ): Promise<AuthCodeResponse> {
        const sotonEmail = isSotonEmail(email);
        if (!sotonEmail) return {
            success: false,
            errorMessage: 'Email must be a valid University Of Southampton Email',
        }

        const code = randomCode();
        await sendEmail(email, 'UoS Cooking Society Sign In Code', `<p>Your sign in code is ${code}</p>`);
        console.log(`${email}:${code}`);

        var halfAnHour = new Date(Date.now() + 30 * 60000);
        await OTPCode.insert({ email: email, authCode: code, expiry: halfAnHour });
        return { success: true };
    }


    @Mutation(() => AuthTokenResponse)
    async getAuthToken(
        @Arg('email') email: string,
        @Arg('code') authCode: string
    ): Promise<AuthTokenResponse> {
        const userCode = await OTPCode.findOne({ email, authCode });
        if (!userCode) return {
            success: false,
            errorMessage: 'Code not found.'
        };

        const expiry = userCode.expiry;

        if (expiry.getTime() - Date.now() < 0) return {
            success: false,
            errorMessage: 'Code has expired.'
        };

        // Check if a user exists 
        var user = await User.findOne({ email });
        if (!user) {
            user = await User.create({
                email: email,
                authSignSecret: crypto.randomBytes(256).toString('base64'),
                name: email.split('@')[0],
            }).save();
        }

        // 10 years from now
        const exp = new Date(Date.now() + 1000 * 60 * 60 * 24 * 365 * 10);

        var claims = {
            iss: 'https://cook-soc-api.herokuapp.com',
            sub: user.id,
        };

        await userCode.remove();

        const jwt = create(claims, Buffer.from(user.authSignSecret, 'base64'))
        jwt.setExpiration(exp);

        return { success: true, authToken: jwt.compact() };
    }

    @Mutation(() => DeleteAccountResponse)
    @UseMiddleware(isAuth)
    async deleteAccount(
        @Ctx() context: MyContext
    ): Promise<DeleteAccountResponse> {
        const user = context.user!;

        // Delete the user which will automatically delete related entities
        // via SQL cascading
        await user.remove()

        return { success: true };
    }

}