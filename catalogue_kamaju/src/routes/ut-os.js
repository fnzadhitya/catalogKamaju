import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-os';
import HeroImg2 from '../components/HeroImg2';

const Ut_Os = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="SVC | OPERATOR SITE | ALL AREA" />
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Os
