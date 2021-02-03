const express = require("express");
const app = express();
const { db } = require("./conf");
const port = 5050;
const cors = require("cors");
app.use(express.json());
app.use(cors());

app.get("/news", (req, res) => {
  db.query(
    `SELECT title_article, content_article, image_new FROM news_bb ORDER BY id DESC LIMIT 3`,
    (error, result) => {
      if (error) {
        return res.status(500).send("Error");
      }
      return res.json(result);
    }
  );
});

app.listen(port, () => {
  console.log(`Server is running on ${port}`);
});
