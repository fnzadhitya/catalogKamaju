import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import PPA from '../components/customer/ppa';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/ppa.png'

const Ppa = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="PUTRA PERKASA ABADI" text="PLNT | MEKANIK A2B | SATUI" image={logo}/>
		<PPA />
		<Footer />
	</div>
  )
}

export default Ppa
