import Sidebar from "./Sidebar";

import React, { useState, useEffect } from "react";
import axios from "axios";
import {
  DivNew,
  H2,
  DivNewContain,
  Img,
  P,
  Div,
} from "../styled-components/News";

export default function News() {
  const [articles, setArticles] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setLoading(true);
    axios({
      method: "GET",
      url: `http://localhost:5050/allnews`,
    }).then((res) => {
      console.log(res.data);
      setArticles(res.data);
      setLoading(false);
    });
  }, [setArticles]);

  return (
    <Div>
      <div>
        <Sidebar />
      </div>
      <div>
        {loading && <p>Loading</p>}
        {!loading && (
          <>
            {articles.map((article, i) => (
              <DivNew key={i}>
                <H2>{article.title_article}</H2>
                <DivNewContain>
                  <Img src={article.image_new} alt="image" />
                  <P>{article.content_article}</P>
                </DivNewContain>
              </DivNew>
            ))}
          </>
        )}
      </div>
    </Div>
  );
}
