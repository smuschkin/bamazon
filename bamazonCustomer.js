var mysql = require("mysql");
var inquirer = require("inquirer");
require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_db",
});
connection.connect(function (err) {
    if (err) throw err;
    console.log(`Connected! Check it out: ${connection.threadId}`)
    loadDatabase();
});

function afterConnection() {
    var query = connection.query("SELECT * FROM bamazon_db.bamazon_products;", function (err, res) {
        if (err) throw err;
        console.log(res);
        // connection.end();
    });
}
function loadDatabase(){
    connection.query("SELECT * FROM bamazon_products;", function(err, res){
        console.log(err);
        console.table(res);
        customerSelection(res);
    })


};

function customerSelection(data) {
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
            }]).then(function (val) {
                var lookupID = parseInt(val.id);
                var product = lookupItem(lookupID, data);
                customerSelectionQuantity(product);
            })
};

function customerSelectionQuantity(product) {
    inquirer
        .prompt([
            {
                name: "stock_quantity",
                type: "input",
                message: "How many would you like to purchase?",
            }
        ]).then(function(val){
            var quantity = parseInt(val.stock_quantity);
            if (quantity > product.stock_quantity) {
                console.log("Insufficient Stock");
                loadDatabase();
            }
            else {
                buyItem(product, quantity);
            }
        })
};

function lookupItem(id, database) {
    for (var i = 0; i < database.length; i++){
        if (database[i].item_id === id){
            return database[i];
        }
    }
    return null;
};

function buyItem(product, quantity) {
    connection.query("UPDATE bamazon_products SET stock_quantity = stock_quantity - ? WHERE item_id = ?", [quantity, product.item_id], function(err, res){
        console.log("Purchased " + quantity + " " + product.product_name + "'s and owe $" + (product.price * quantity));
        loadDatabase();
    })
};