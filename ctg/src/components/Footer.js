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

  return (
    <div className="footer">
      <div className="footer-container">
        <div className="top">
          <div className="social">
            <FaYoutube onClick={openYoutube} size={24} className="icon" />
            <FaInstagram onClick={openInstagram} size={24} className="icon" />
            <FaLinkedinIn onClick={openLinkedinIn} size={24} className="icon" />
            <FaGlobe onClick={openWebsite} size={24} className="icon" />
            <FaMap onClick={openMap} size={24} className="icon" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
