const mySQL = require('mysql');

var db = mySQL.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
    dateStrings: process.env.DB_DATE,
    charset : process.env.DB_CHARSET
});

module.exports = db;
