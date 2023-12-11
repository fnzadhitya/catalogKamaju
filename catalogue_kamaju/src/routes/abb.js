import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import ABB from '../components/customer/abb';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_abb.png';

const abb = () => {
  return (
    <div>
      <Navbar />
      <HeroImg2 heading="ASMIN BARA BRONANG" text="PLANT | MEKANIK, OPERATOR, WELDER | ALL AREA" image={logo} />
      <ABB />
      <Footer />
    </div>
  );
}

export default abb;