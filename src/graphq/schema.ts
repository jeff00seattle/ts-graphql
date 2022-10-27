import { gql } from "apollo-server";

// A schema is a collection of type definitions (hence "typeDefs")
// that together define the "shape" of queries that are executed against
// your data.

const typeDefs = () => {
    return gql`
      # This "Book" type defines the queryable fields for every book in our data source.
      type Book {
        title: String
        author: String
      }
    
      type User {
        name: String
        email: String
        projects: [Project]
      }
    
      type Project {
        title: String
        active: Boolean!
        members: [User]
      }
    
      # The "Query" type is special: it lists all of the available queries that
      # clients can execute, along with the return type for each. In this
      # case, the "books" query returns an array of zero or more Books (defined above).
      type Query {
        books: [Book]
        users: [User]
      }
    `;
}

export {
    typeDefs
}
