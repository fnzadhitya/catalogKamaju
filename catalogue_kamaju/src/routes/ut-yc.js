import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-yc';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/ut.png';

const Ut_Yc = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="MKT | YARD CREW | ALL AREA" image={logo}/>
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Yc
