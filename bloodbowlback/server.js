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

app.get("/allnews", (req, res) => {
  db.query(
    `SELECT title_article, content_article, image_new FROM news_bb ORDER BY id DESC`,
    (error, result) => {
      if (error) {
        return res.status(500).send("Error");
      }
      return res.json(result);
    }
  );
});

app.get("/teams", (req, res) => {
  db.query(`SELECT race_name, image_race  FROM races`, (error, result) => {
    if (error) {
      return res.status(500).send("Error");
    }
    return res.json(result);
  });
});

app.get("/teams/:id", (req, res) => {
  const id = req.params.id;
  db.query(
    `SELECT race_name, race_description, race_strengths, race_weaknesses FROM races
WHERE id = ?`,
    [id],
    (error, result) => {
      if (error) {
        return res.status(500).send("Error");
      }
      return res.json(result);
    }
  );
});

app.get("/players/:id", (req, res) => {
  const id = req.params.id;
  db.query(
    `SELECT p.price, r.race_name, roles.role_name, stats.m, stats.f, stats.ag, stats.va FROM players
    JOIN prices p ON p.id = players.prices_id
    JOIN races r ON r.id = players.races_id
    JOIN roles ON roles.id = players.roles_id
    JOIN skills s ON s.id = players.skills_id
    JOIN stats ON stats.id = players.stats_id
    WHERE r.id = ?`,
    [id],
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
