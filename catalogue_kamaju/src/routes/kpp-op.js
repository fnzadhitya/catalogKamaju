import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import KPP from '../components/customer/kpp-op';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_kpp.png';

const Kpp_Op = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="KALIMANTAN PRIMA PERSADA" text="MKT | OPERATOR | ALL AREA" image={logo}/>
		<KPP />
		<Footer />
	</div>
  )
}

export default Kpp_Op
