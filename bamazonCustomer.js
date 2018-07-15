var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db",
});
connection.connect(function (err) {
    if (err) throw err;
    console.log(`Connected! Check it out: ${connection.threadId}`)
    afterConnection();
});

function afterConnection() {
    var query = connection.query("SELECT * FROM bamazon_db.bamazon_products;", function (err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
    console.log(`The query that ran: ${query.sql}`)
}

function customerSelection() {
    connection.query("SELECT * FROM bamazon_products");
    inquirer
        .prompt([
            {
                name: "id",
                type: "input",
                message: "What is the ID number of the desired product?",
                validate: function (value) {
                    if (value < 11 && value > 0) {
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            },
            {
                name: "stock_quantity",
                type: "input",
                message: "How many would you like to purchase?",
                validate: function (value) {
                    if (value > 100) {
                        return false;
                    }
                    else {
                        return true;
                    }
                }
            }
        ])
        .then(function (results) {
            var desiredItem;
            for (var i = 0; i < results.length; i++){
                if (results[i].name <= results.stock_quantity) {
                    console.log("Sorry, we don't have enough of that item.")
                }
                else {
                    console.log("Awesome, enjoy!");
                    (stock_quantity - results)
                }
        });
};
customerSelection();
