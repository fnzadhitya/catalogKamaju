import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import KRA from '../components/customer/kra';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/kra1.png'
const Kra = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="KOMATSU REMANUFACTURING ASIA" text="QA | RAMO | ALL AREA" image={logo}/>
		<KRA />
		<Footer />
	</div>
  )
}

export default Kra
