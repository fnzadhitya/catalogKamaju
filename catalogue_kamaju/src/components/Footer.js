import "./FooterStyles.css";

import React from "react";
import { FaYoutube, FaInstagram, FaLinkedinIn, FaGlobe, FaMap } from "react-icons/fa";

const Footer = () => {
  const openYoutube = () => {
    window.open('https://youtube.com/c/kamajuofficial', '_blank');
  }
  const openInstagram = () => {
    window.open('https://www.instagram.com/kamajuofficial', '_blank');
  }
  const openLinkedinIn = () => {
    window.open('https://www.linkedin.com/company/kamaju', '_blank');
  }
  const openWebsite = () => {
    window.open('https://www.kamaju.co.id/', '_blank');
  }
  const openMap = () => {
    window.open('https://maps.app.goo.gl/si57W7XoMQ4X72cq9', '_blank');
  }

  return <div className="footer">
    <div className="footer-container">

      <div className="top">
        <div className="social">
          <FaYoutube onClick={openYoutube} size={26} style={{color: "#fff", marginRight: "2rem" }} />
          <FaInstagram onClick={openInstagram} size={26} style={{color: "#fff", marginRight: "2rem"}} />
          <FaLinkedinIn onClick={openLinkedinIn} size={26} style={{color: "#fff", marginRight: "2rem"}} />
          <FaGlobe onClick={openWebsite} size={24} style={{color: "#fff", marginRight: "2rem"}} />
          <FaMap onClick={openMap} size={24} style={{color: "#fff", marginRight: "2rem"}} />
        </div>
      </div>
      
    </div>
  </div>;
};

export default Footer;
