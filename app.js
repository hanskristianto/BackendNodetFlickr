require('dotenv').config()
const express = require("express")
const app = express()
const cors = require('cors')
const port = 8080
// package body-parser for get json
const bodyParser = require('body-parser'); 
// set default route
const route = require("./module/route")
app.use(cors())
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())

app.use("/api/v1", route)

app.listen(port, ()=>{
    console.log("Server running at http://localhost:" + port)
})