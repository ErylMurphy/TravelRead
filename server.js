const express = require("express");
const path = require("path");
const Book = require("./models/Book");
const State = require("./models/State");
const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const redirect = require("express-redirect");

const app = express();

// Allow override of HTTP methods based on the query string ?_method=DELETE
app.use(methodOverride("_method"));

// Add the HTTP body onto the request object in all route handlers.
app.use(bodyParser.urlencoded({ extended: false }));

//Add redirect
redirect(app);
// Allow the port to be set by an environment variable when run (PORT=4000 node server.js)
// and fallback to a default to 4567 if it's not supplied.
const PORT = process.env.PORT || 4567;

// Serve any files in the public folder at the "/public" route.
app.use("/public", express.static("public"));

// Set the folder for where our views are.
app.set("views", path.join(__dirname, "views"));

// Tell Express that we use EJS in our views.
app.set("view engine", "ejs");

app.get("/", (request, response) => {
    State.all().then(states => {
    response.render("homepage", {states: states});
    });
});

app.get("/states/:id", (request, response) => {
    const state_id = request.params.id;
    Promise.all([
        Book.allInState(state_id),
        State.find(state_id)
    ]).then(([books, state]) => {
        response.render("states/show", { books: books, state: state});
    });
});

app.get("/books/:id", (request, response) => {
    const id = request.params.id;
    Book.find(id).then(book => {
        response.render("books/show", { book: book });
    });
});

app.delete("/books/:id", (request, response) => {
    const id = request.params.id;
        Book.delete(id)
        .then(book => {
            response.redirect("..");
    });
});

app.post('/states/:id', (request, response) => {
    const state_id = request.params.id;
    const newBook = request.body;
    newBook.id = state_id;
    Promise.all([,
        Book.create(newBook),
        State.find(state_id)
    ]).then(([books, state, id]) => {
        response.redirect('back');
    });
});

app.get("/books/:id/edit", (request, response) => {
    const id = request.params.id;
    Book.find(id).then(bookData => {
        response.render("books/edit", { book: bookData })
    })
});

app.put("/books/:id", (request, response) => {
    const updatedBook = request.body;
    updatedBook.id = request.params.id;
    Book.update(updatedBook).then(bookData => {
        response.redirect(302, `/books/${updatedBook.id}`);
    })
});

app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}`);
});