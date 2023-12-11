import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TOP from '../components/customer/top';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/top.png'

const Top = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TELEN ORBIT PRIMA" text="PLANT | MEKANIK, OPERATOR, WELDER | ALL AREA" image={logo}/>
		<TOP />
		<Footer />
	</div>
  )
}

export default Top
