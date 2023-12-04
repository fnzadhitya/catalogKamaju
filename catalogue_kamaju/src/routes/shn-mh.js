import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SHN from '../components/customer/shn-mh';
import HeroImg2 from '../components/HeroImg2';

const Shn_Mh = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SWADAYA HARAPAN NUSANTARA" text="MSI | MEKANIK HELPER | CIKARANG" />
		<SHN />
		<Footer />
	</div>
  )
}

export default Shn_Mh
