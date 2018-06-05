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
// app.get("/books/new", (request, response) => {
// //     Book.all().then(books => {
// //         response.render("books/new", { books: books });
// //     });
// // });

// app.get("/categories", (request, response) => {
//     Category.all().then(categories => {
//         response.render("categories/index", { categories: categories });
//     });
// });

// app.get("/categories/:id", (request, response) => {
//     const category_id = request.params.id;
//     Promise.all([
//         Quote.allInCategory(category_id),
//         Category.find(category_id)
//     ]).then(([quotes, category]) => {
//         response.render("categories/show", { quotes: quotes, category: category });
//     });
// });

// app.get("/quotes", (request, response) => {
//     Quote.all().then(quotes => {
//         response.render("quotes/index", { quotes: quotes });
//     });
// });


// app.get("/quotes/new", (request, response) => {
//     Category.all().then(categories => {
//         response.render("quotes/new", { categories: categories });
//     });
// });

// app.get("/quotes/:id", (request, response) => {
//     const id = request.params.id;
//     Quote.find(id).then(quote => {
//         response.render("quotes/show", { quote: quote });
//     });
// });

// app.put("/quotes/:id", (request, response) => {
//     const quoteUpdates = request.body;
//     quoteUpdates.id = request.params.id;
//     Quote.update(quoteUpdates).then(() => {
//         response.redirect(302, `/quotes/${quoteUpdates.id}`);
//     });
// });

// app.get("/quotes/:id/edit", (request, response) => {
//     const id = Number(request.params.id);
//     Promise.all([Quote.find(id), Category.all()]).then(([quote, categories]) => {
//         response.render("quotes/edit", { quote: quote, categories: categories });
//     });
// });


// app.get("/categories/new", (request, response) => {
//     Category.all().then(categories => {
//         response.render("categories/new", { categories: categories });
//     });
// });


// app.post("/categories", (request, response) => {
//     const newCategory = request.body;
//     Category.create(newCategory).then(category => {
//         response.redirect(302, "/categories");
//     });
// });

// app.put("/categories/:id", (request, response) => {
//     const categoryUpdates = request.body;
//     categoryUpdates.id = request.params.id;
//     Category.update(categoryUpdates).then(() => {
//         response.redirect(302, `/categories/${categoryUpdates.id}`);
//     });
// });

// app.get("/categories/:id/edit", (request, response) => {
//     const id = Number(request.params.id);
//     Category.find(id).then(category => {
//         response.render("categories/edit", { category: category });
//     });
// });

app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}`);
});