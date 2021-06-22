const express = require('express');
const router = express.Router();
const {database} = require('../config/helper');

// Get all products
router.get('/', (req, res, next) => {

    // set the current page no
    let page = (req.query.page != undefined && req.query.page != 0) ? req.query.page : 1;
    // set the limit if item per page
    const limit = (req.query.limit != undefined && req.query.limit != 0) ? req.query.limit : 10;

    let startValue;
    let endValue;
    
    if(page > 0) {
        startValue = (page * limit ) - limit; 
        endValue = page * limit;
    } else {
        // default
        startValue = 0;
        endValue = 10;
    }


    database.table('products as p')
        .join([                                    
            {
                table: "categories as c",
                on: `c.id = p.cat_id`
            }
        ])
        .withFields([
            'c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.id'
        ])
        .slice(startValue, endValue)   // only get products from startValue to endValue
        .sort({id: .1})               // Sort as per id in ascending
        .getAll()                    // get all the products as an array
        .then(prods => {            // returns a promise
            if (prods.length > 0) {
                res.status(200).json({          // send back response to frontend
                    count: prods.length,
                    products: prods
                });
            } else {
                res.json({message: "No products found"});
            }
        })
        .catch(err => console.log(err));       // promise - error handling

});


// Get one product with product id
router.get('/:prodId', (req, res) => {
    let productId = req.params.prodId;    // Params
    database.table('products as p')
        .join([
            {
                table: "categories as c",
                on: `c.id = p.cat_id`
            }
        ])
        .withFields(['c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.id',
            'p.images'
        ])
        .filter({'p.id': productId})
        .get()
        .then(prod => {
            console.log(prod);
            if (prod) {
                res.status(200).json(prod);
            } else {
                res.json({message: `No product found with id ${productId}`});
            }
        }).catch(err => res.json(err));
});


// Get all products from one category
router.get('/category/:catName', (req, res) => { // Sending Page Query Parameter is mandatory http://localhost:3636/api/products/category/categoryName?page=1
    
    let page = (req.query.page !== undefined && req.query.page !== 0) ? req.query.page : 1;   // check if page query param is defined or not
    const limit = (req.query.limit !== undefined && req.query.limit !== 0) ? req.query.limit : 10;   // set limit of items per page
    
    let startValue;
    let endValue;

    if (page > 0) {
        startValue = (page * limit) - limit;      
        endValue = page * limit;                  
    } else {
        startValue = 0;
        endValue = 10;
    }

    // Get category title value from param
    const cat_title = req.params.catName;

    database.table('products as p')
        .join([
            {
                table: "categories as c",
                on: `c.id = p.cat_id WHERE c.title LIKE '%${cat_title}%'`
            }
        ])
        .withFields(['c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.id'
        ])
        .slice(startValue, endValue)
        .sort({id: 1})
        .getAll()
        .then(prods => {
            if (prods.length > 0) {
                res.status(200).json({
                    count: prods.length,
                    products: prods
                });
            } else {
                res.json({message: `No products found matching the category ${cat_title}`});
            }
        }).catch(err => res.json(err));

});



module.exports = router;