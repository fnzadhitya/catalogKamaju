import "./HeroImg2Styles.css";

import React, { Component } from "react";
import logo from '../assets/KMJ.png'

class HeroImg2 extends Component {
  render() {
    return <div className="hero-img">
      <div className="heading">
        <img src={logo} alt="Logo" />
        <h1>KANITRA MITRA JAYAUTAMA</h1>
        <p>________________________</p>
      </div>
    </div>;
  };
};

export default HeroImg2;
