import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-cs';
import HeroImg2 from '../components/HeroImg2';

const Ut_Cs = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="HC | COP SITE | ALL AREA" />
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Cs
