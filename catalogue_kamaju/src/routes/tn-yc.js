import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TN from '../components/customer/tn-yc';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/tn.png';

const Tn_Yc = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TRAKTOR NUSANTARA" text="MSI | YARD CREW | ALL AREA" image={logo}/>
		<TN />
		<Footer />
	</div>
  )
}

export default Tn_Yc
