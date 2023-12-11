import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BP from '../components/customer/bp-mo';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_binapertiwi.png';
const Bp_Mo = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINA PERTIWI" text="PSED | MEKANIK OPTIONAL | ALL AREA" image={logo} />
		<BP />
		<Footer />
	</div>
  )
}

export default Bp_Mo
