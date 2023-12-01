import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TN from '../components/customer/tn-mh';
import HeroImg2 from '../components/HeroImg2';

const Tn_Mh = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TRAKTOR NUSANTARA" text="SVC | MEKANIK HELPER | ALL AREA" />
		<TN />
		<Footer />
	</div>
  )
}

export default Tn_Mh
