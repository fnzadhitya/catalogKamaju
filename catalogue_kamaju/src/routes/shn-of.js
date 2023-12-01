import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SHN from '../components/customer/shn-of';
import HeroImg2 from '../components/HeroImg2';

const Shn_Of = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SWADAYA HARAPAN NUSANTARA" text="MSI | OPERATOR FORKLIFT | SIDOARJO" />
		<SHN />
		<Footer />
	</div>
  )
}

export default Shn_Of
