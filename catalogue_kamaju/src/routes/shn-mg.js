import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SHN from '../components/customer/shn-mg';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/shn.png'

const Shn_Mg = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SWADAYA HARAPAN NUSANTARA" text="SVC | MEKANIK GENSET| JAKARTA" image={logo}/>
		<SHN />
		<Footer />
	</div>
  )
}

export default Shn_Mg
