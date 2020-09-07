const db = require("../config/database")
const { response } = require("express")


const mainModel = {

    login : (data, callback)=>{

        var query = db.query("SELECT * FROM users WHERE email = '"+data.email+"' AND password = '"+data.password+"'", (err, result, fields)=>{

            if(!err  && result[0]){

                callback(result[0], 1)

            }else{
                
                callback("Invalid Username or Password", 0)
            }
        })
    },

    setWishList : (data, callback)=>{

        const input = {
            user_id : data.user_id,
            image_url : data.image_url,
            status : '1'
        }
        var query = db.query("INSERT wishlist SET ?", input, (err, result)=>{
            if(!err){
                callback("Success add wishlist", 1)
            }else{
                console.log(err)
                callback("Failed add wishlist", 0)
            }
        })
    },

    myWishList : (data, callback)=>{

        var query = db.query("SELECT * FROM wishlist WHERE user_id = "+data.user_id+" AND status = "+1, (err, result, fields)=>{
            
            if(!err  && result){

                callback(result, 1)

            }else{
                
                callback("No Wishlist", 0)
            }
        })
    },

}

module.exports = mainModel;