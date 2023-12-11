import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TN from '../components/customer/tn-mh';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/tn.png';

const Tn_Mh = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TRAKTOR NUSANTARA" text="SVC | MEKANIK HELPER | ALL AREA" image={logo} />
		<TN />
		<Footer />
	</div>
  )
}

export default Tn_Mh
