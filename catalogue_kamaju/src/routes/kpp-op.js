import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import KPP from '../components/customer/kpp-op';
import HeroImg2 from '../components/HeroImg2';

const Kpp_Op = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="KALIMANTAN PRIMA PERSADA" text="MKT | OPERATOR | ALL AREA" />
		<KPP />
		<Footer />
	</div>
  )
}

export default Kpp_Op
