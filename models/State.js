const db = require("../db/connection");

const State = {};

State.all = () => {
    return db.any("SELECT * FROM states ORDER BY id ASC");
};

State.find = id => {
    return db.one("SELECT * FROM states WHERE id = ${id}", { id: id });
};

module.exports = State;