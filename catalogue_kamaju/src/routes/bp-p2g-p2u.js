import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BP from '../components/customer/bp-p2g-p2u';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/logo_binapertiwi.png';
const Bp_P2g_P2u = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINA PERTIWI" text="MKT | P2G SITE, P2U VALIDATOR | ALL AREA" image={logo}/>
		<BP />
		<Footer />
	</div>
  )
}

export default Bp_P2g_P2u
