const db = require("../db/connection");

const Book = {};

Book.all = () => {
    return db.any("SELECT * FROM books");
};

Book.find = id => {
    return db.one("SELECT * FROM books WHERE id = $<id>", { id: id });
};

Book.allInState = state_id => {
    return db.any(`SELECT * FROM books WHERE state_id = ${state_id}`, {
        state_id: state_id
    });
};

Book.create = newBook => {
    return db.one(
        "INSERT INTO books (title, author, date, description, img, state_id) VALUES (${title}, ${author}, ${date}, ${description}, ${img}, ${state_id}) RETURNING *",
        newBook
    );
};

Book.delete = id => {
    return db.result("DELETE FROM books WHERE id = ${id}", { id: id });
};

Book.update = BookUpdates => {
    return db.none(
        "UPDATE books SET title = ${title}, author = ${author}, date = ${date}, description = ${description}, img = ${img}, state_id = ${state_id} WHERE id = ${id}",
        BookUpdates
    );
};

module.exports = Book;