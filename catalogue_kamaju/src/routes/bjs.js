import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BJS from '../components/customer/bjs';
import HeroImg2 from '../components/HeroImg2';

const bjs = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BHUMI JEPARA SERVICE" text="PLNT | OPERATOR | JEPARA" />
		<BJS />
		<Footer />
	</div>
  )
}

export default bjs
