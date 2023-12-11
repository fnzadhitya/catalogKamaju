import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-mos';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/ut.png';

const Ut_Mos = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="SVC | MEKANIK OPTIONAL SITE | ALL AREA" image={logo}/>
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Mos
