import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SMM from '../components/customer/smm';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/smm.png'
const Smm = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SUPRABARI MAPANINDO MINERAL" text="PLANT | MEKANIK, OPERATOR, WELDER | ALL AREA" image={logo}/>
		<SMM />
		<Footer />
	</div>
  )
}

export default Smm
