import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import KMSI from '../components/customer/kmsi';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/kmsi.png'
const Kmsi = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="KOMATSU MARKETING AND SUPPORT INDONESIA" text="MKT | OPERATOR | ALL AREA" image={logo}/>
		<KMSI />
		<Footer />
	</div>
  )
}

export default Kmsi
