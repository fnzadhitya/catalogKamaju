import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import PAMA from '../components/customer/pama-wd';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/pama.png'

const Pama_Wd = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="PAMAPERSADA NUSANTARA" text="PLANT | WELDER | ALL AREA" image={logo}/>
		<PAMA />
		<Footer />
	</div>
  )
}

export default Pama_Wd
