import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import ABB from '../components/customer/abb';
import HeroImg2 from '../components/HeroImg2';

const abb = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="ASMIN BARA BRONANG" text="PLANT | MEKANIK, OPERATOR, WELDER | ALL AREA" />
		<ABB />
		<Footer />
	</div>
  )
}

export default abb
