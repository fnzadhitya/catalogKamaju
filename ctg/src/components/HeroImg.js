import "./HeroImgStyles.css";
import React from "react";
import IntroImg from "../assets/kamaju_cover.jpg";

const HeroImg = () => {
  return (
  <div className="hero">
    <div className="mask">
      <img className="intro-img" src={ IntroImg } alt="IntroImg" />
    </div>
    <div className="content">
      <p>Hallo, ini merupakan website</p>
      <h1>Catalog Kamaju</h1>
    </div>
  </div>
  );
};

export default HeroImg;
