import {ApolloServer, gql, ServerInfo} from "apollo-server";
import { ApolloServerPluginLandingPageLocalDefault } from "apollo-server-core";

const typeDefs = require("./graphql/schema").typeDefs();
const resolvers = require("./graphql/resolvers").resolvers();

// The ApolloServer constructor requires two parameters: your schema
// definition and your set of resolvers.
const server = new ApolloServer({
  typeDefs,
  resolvers,
  introspection: true,
  plugins: [ApolloServerPluginLandingPageLocalDefault()],
});

const port = process.env.PORT || 4000;

server.listen({ port }).then((response: ServerInfo) => {
  console.log(JSON.stringify(response, null, 2));
});
