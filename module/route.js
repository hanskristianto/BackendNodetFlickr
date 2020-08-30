var express = require('express');
var router = express.Router();
var mainModel = require("./mainModel");


router.post("/login", (req, res)=>{
    let data = {
        email : req.body.email,
        password : req.body.password
    }

    mainModel.login(data, (response, code)=>{
        
        if(code === 1){
            console.log(response)
            let r = {
                error : false,
                data : {
                    id: response.id,
                    name : response.name,
                    email : response.email,
                }
            }
            res.json(r)

        }else{
            let r = {
                error : true,
                message : response
            }
            res.json(r)
        }
    })
})

router.post("/setWishList", (req, res)=>{

    mainModel.setWishList(req.body, (response, code)=>{
        if(code === 1){
            let r = {
                error : false,
                message : response
            }
            res.json(r)

        }else{
            let r = {
                error : true,
                message : response
            }
            res.json(r)
        }
    })
})

router.post("/myWishList", (req, res)=>{
    
    mainModel.myWishList(req.body, (response, code)=>{
        if(code === 1){
            let r = {
                error : false,
                data : response
            }
            res.json(r)

        }else{
            let r = {
                error : true,
                message : response
            }
            res.json(r)
        }
    })
})


module.exports = router;