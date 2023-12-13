import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BJS from '../components/customer/bjs';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_bjs.png';
const bjs = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BHUMI JEPARA SERVICE" text="PLANT | OPERATOR | JEPARA" image={logo} />
		<BJS />
		<Footer />
	</div>
  )
}

export default bjs
