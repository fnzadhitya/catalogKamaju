import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import KPP from '../components/customer/kpp-wd';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_kpp.png';

const Kpp_Wd = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="KALIMANTAN PRIMA PERSADA" text="MKT | WELDER | ALL AREA" image={logo} />
		<KPP />
		<Footer />
	</div>
  )
}

export default Kpp_Wd
