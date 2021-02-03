import React, { useState, useEffect } from "react";
import axios from "axios";

export default function MainPage() {
  const [articles, setArticles] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);
    axios({
      method: "GET",
      url: `http://localhost:5050/news`,
    }).then((res) => {
      console.log(res.data);
      setArticles(res.data);
      setLoading(false);
    });
  }, [setArticles]);

  return (
    <div>
      {loading && <p>Loading</p>}
      {!loading && (
        <>
          {articles.map((article, i) => (
            <div key={i}>
              <h2>{article.title_article}</h2>
              <p>{article.content_article}</p>
            </div>
          ))}
        </>
      )}
    </div>
  );
}
