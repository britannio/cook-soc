import { MyContext } from "../types";
import { MiddlewareFn } from "type-graphql";
import { JSONMap, verify } from "njwt";
import { User } from "../entity/User";

// Middleware that our GraphQL resolvers can wrap themselves in to ensure that
// they only run when the user is authenticated
export const isAuth: MiddlewareFn<MyContext> = async ({ context }, next) => {
    const authorization = context.req.headers.authorization ?? '';

    var user: User | undefined;

    try {
        const body = authorization.split('.')[1];
        const bodyJson = JSON.parse(Buffer.from(body, 'base64').toString()) as JSONMap;
        const id = bodyJson['sub'] as string;
        user = await User.findOne(id);
        if (!user) throw new Error('user not found');
        context.jwt = verify(authorization, Buffer.from(user.authSignSecret, 'base64'));
    } catch (e) {
        console.log(e);
    }

    if (!context.jwt) throw new Error('invalid authorization token');
    
    context.user = user;
    return next();
}