const express = require('express');
const app = express();
const PORT = 3000;
const cors = require('cors'); // It is a mechanism to allow or restrict requested resources on a web server depend on where the HTTP request was initiated.
const bodyParser = require('body-parser');

app.use(cors())

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json());

// importing routes
const productsRoute = require('./routes/products');
const ordersRoute = require('./routes/orders');


app.use('/api/products', productsRoute);
app.use('/api/orders', ordersRoute);



app.listen(PORT, () => {
    console.log('Server is running !')
})