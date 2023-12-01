import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import TBP from '../components/customer/tbp-ad';
import HeroImg2 from '../components/HeroImg2';

const Tbp_Ad = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="TRIATRA & BINA PERTIWI" text="SMC | ADMIN | FREEPORT" />
		<TBP />
		<Footer />
	</div>
  )
}

export default Tbp_Ad
