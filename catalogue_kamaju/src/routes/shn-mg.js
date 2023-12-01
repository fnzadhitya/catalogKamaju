import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SHN from '../components/customer/shn-mg';
import HeroImg2 from '../components/HeroImg2';

const Shn_Mg = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SWADAYA HARAPAN NUSANTARA" text="SVC | MEKANIK GENSET| JAKARTA" />
		<SHN />
		<Footer />
	</div>
  )
}

export default Shn_Mg
