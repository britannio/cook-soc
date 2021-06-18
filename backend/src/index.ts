import "reflect-metadata";
import { createConnection, getConnectionOptions } from "typeorm";
import express from "express";
import { ApolloServer } from "apollo-server-express";
import { buildSchema } from "type-graphql";
import { HelloWorldResolver } from "./resolvers/HelloWorldResolver";
import { RecipeResolver } from "./resolvers/RecipeResolver";
import { UserResolver } from "./resolvers/UserResolver";

const main = async ()=> {
  const app = express();

  const options = await getConnectionOptions(
    process.env.NODE_ENV || "development"
  );
  await createConnection({ ...options, name: "default" });

  const apolloServer = new ApolloServer({
    plugins: [
      // Logs requests
      {
        requestDidStart: ( requestContext ) => {
          if ( requestContext.request.http?.headers.has( 'x-apollo-tracing' ) ) {
            return;
          }
          const query = requestContext.request.query?.replace( /\s+/g, ' ' ).trim();
          const variables = JSON.stringify( requestContext.request.variables );
          console.log( new Date().toISOString(), `- [Request Started] { query: ${ query }, variables: ${ variables }, operationName: ${ requestContext.request.operationName } }` );
          return;
        },
      },
    ],
    schema: await buildSchema({
      resolvers: [UserResolver, HelloWorldResolver, RecipeResolver],
      validate: true,
      emitSchemaFile: true
    }),
    context: ({ req, res }) => ({ req, res })
  });

  apolloServer.applyMiddleware({ app, cors: false });
  const port = process.env.PORT || 4000;
  app.listen(port, () => {
    console.log(`server started at http://localhost:${port}/graphql`);
  });
};

main().catch((err) => {
  // Logs our errors
  console.error(err);
});