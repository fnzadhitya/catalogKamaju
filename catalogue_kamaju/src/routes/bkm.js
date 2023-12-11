import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BKM from '../components/customer/bkm';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/_bkm.png';

const Bkm = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINTANG KALIMANTAN MANDIRI" text="PLANT | MEKANIK | ALL AREA" image={logo}/>
		<BKM />
		<Footer />
	</div>
  )
}

export default Bkm
