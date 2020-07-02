// dependencies
var express = require("express");
// import the model to use its db functions for burger.js
var burger = require("../models/burger.js");

// create the router for the app, and export 
var router = express.Router();
// Create routes and set up logic where required.
router.get("/", function (req, res) {
    burger.selectAll(function(data) {
        var hbsObject = {
            burgers: data
        };
        console.log(hbsObject);
        res.render("index", hbsObject);
    });
});

//add new Burger to the db
router.post("/api/burgers", function (req, res) {
    burger.insertOne(["burger_name", "devoured"], [req.body.burger_name, req.body.devoured], function (result) {
        // send back the ID of the new burger
        res.json({ id: result.insertId });
    });

});