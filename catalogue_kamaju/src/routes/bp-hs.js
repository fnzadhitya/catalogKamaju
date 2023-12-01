import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BP from '../components/customer/bp-hs';
import HeroImg2 from '../components/HeroImg2';

const Bp_Hs = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINA PERTIWI" text="PSED | MAGANG HOSEMAN & HOSEMAN | ALL AREA" />
		<BP />
		<Footer />
	</div>
  )
}

export default Bp_Hs
