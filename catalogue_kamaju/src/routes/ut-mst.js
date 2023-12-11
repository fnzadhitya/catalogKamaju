import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-mst';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/ut.png';

const Ut_Mst = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="SVC | MEKANIK SITE | TANJUNG ENIM" image={logo}/>
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Mst
