import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TBP from '../components/customer/tbp-ad';
import HeroImg2 from '../components/HeroImg2';
import logo1 from '../assets/triatra.png'
//import logo2 from '../assets/logo_binapertiwi.png' //

const Tbp_Ad = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TRIATRA & BINA PERTIWI" text="SMC | ADMIN | FREEPORT" image={logo1}/>
		<TBP />
		<Footer />
	</div>
  )
}

export default Tbp_Ad
