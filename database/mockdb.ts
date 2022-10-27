const users = () => {
    return [
        {
            name: "Vera Hawkins",
            email: "vera.hawkins@example.com",
            projects: [{ title: "vera.hawkins site 2022", active: true }],
        },
        {
            name: "Courtney Schmidt",
            email: "courtney.schmidt@example.com",
            projects: [{ title: "courtney.schmidt site 2022", active: true }],
        },
    ]
}

const books = () => {
    return [
        {
            title: "The Awakening",
            author: "Kate Chopin",
        },
        {
            title: "City of Glass",
            author: "Paul Auster",
        },
    ]
}

export {
    users,
    books
}
