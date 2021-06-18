import { Recipe } from "../entity/Recipe";
import { Resolver, Mutation, Arg, Field, InputType, UseMiddleware, ObjectType, Ctx } from "type-graphql";
import { isAuth } from "../middleware/isAuth";
import Axios = require('axios');
import { MyContext } from "../types";

@InputType()
class RecipeInput {
    @Field()
    name!: string;

    @Field()
    ingredients!: string;

    @Field()
    instructions!: string;

    @Field()
    info!: string;

    isEmpty(): boolean {
        return this.name.length + this.ingredients.length + this.instructions.length + this.info.length === 0;
    }
}

@ObjectType()
class CreateRecipeResponse {
    @Field(() => Recipe, { nullable: true })
    recipe?: Recipe;

    @Field({ nullable: true })
    errorMessage?: string;

    @Field(() => Boolean)
    success: boolean;
}


@Resolver()
export class RecipeResolver {
    @Mutation(() => CreateRecipeResponse)
    @UseMiddleware(isAuth)
    async createRecipe(
        @Arg('options') options: RecipeInput,
        @Ctx() context: MyContext,
    ): Promise<CreateRecipeResponse> {
        const webHookUrl = process.env.RECIPE_WEBHOOK_URL!;
        const axios = Axios.default;

        if (options.isEmpty()) return {
            success: false,
            errorMessage: 'Recipe is empty'
        };
        const recipe = await Recipe.create({
            ...options,
            creatorId: context.user!.id,
            creator: context.user,
        }).save();

        await axios.post(webHookUrl, {
            username: 'Recipe Webhook',
            avatar_url: 'https://cdn.discordapp.com/attachments/773675636454719558/812996379113816104/35d3993c7c8cdecaca96f40232bbecfae89b5280.jpg',
            embeds: [
                {
                    author: {
                        name: context.user!.name,
                        url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
                        icon_url: "https://cdn.discordapp.com/attachments/773675636454719558/812996379113816104/35d3993c7c8cdecaca96f40232bbecfae89b5280.jpg"
                    },
                    title: recipe.name,
                    fields: [
                        {
                            name: 'Difficulty',
                            value: 'Medium',
                            inline: true
                        },
                        {
                            name: 'Time',
                            value: '25m',
                            inline: true
                        },
                        {
                            name: 'Ingredients',
                            value: recipe.ingredients,
                        },
                        {
                            name: 'Instructions',
                            value: recipe.instructions,
                        },
                    ],
                }
            ]
        });

        return {
            recipe: recipe,
            success: true
        }
    }
}