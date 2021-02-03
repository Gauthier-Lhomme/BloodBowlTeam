const express = require("express");
const app = express();
const { db } = require("./conf");
const port = 5050;
app.use(express.json());


app.get("/news", (req,res) =>{
  db.query(`SELECT title, content_article FROM news_bb`, 
  (error,result) =>{
    if (error) {
      return res.status(500).send("Error");
    }
    return res.json(result)
  })
})

app.listen(port,()=>{
  console.log(`Server is running on ${port}`)
})