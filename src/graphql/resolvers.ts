
const users = require("../../database/mockdb").users();
const books = require("../../database/mockdb").books();

// Resolvers define how to fetch the types defined in your schema.
// This resolver retrieves books from the "books" array above.

const resolvers = () => {
    return {
        Query: {
            books: () => books,
            users: () => users
        }
    };
}

export {
    resolvers
}
