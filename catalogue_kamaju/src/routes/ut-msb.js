import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-msb';
import HeroImg2 from '../components/HeroImg2';

const Ut_Msb = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="SVC | MEKANIK SITE | BERAU" />
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Msb
