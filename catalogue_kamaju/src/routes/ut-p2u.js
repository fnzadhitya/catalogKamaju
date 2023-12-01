import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-p2u';
import HeroImg2 from '../components/HeroImg2';

const Ut_P2u = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="HC | P2U | ALL AREA" />
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_P2u
