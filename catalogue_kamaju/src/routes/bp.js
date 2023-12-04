import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BP from '../components/customer/bp';
import HeroImg2 from '../components/HeroImg2';

const Bp = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINA PERTIWI" text="PSED | MAGANG CPBP & CPJK, PRODUCTION CREW CPBP & CPJK | ALL AREA" />
		<BP />
		<Footer />
	</div>
  )
}

export default Bp
