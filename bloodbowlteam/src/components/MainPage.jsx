import React, { useState, useEffect } from "react";
import axios from "axios";
import {
  DivMain,
  DivNew,
  DivNewContain,
  H2,
  Img,
  P,
} from "../styled-components/MainPage";
import Sidebar from "./Sidebar";

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
    <DivMain>
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
    </DivMain>
  );
}
