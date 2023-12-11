import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import SHN from '../components/customer/shn-mh';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/shn.png'

const Shn_Mh = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="SWADAYA HARAPAN NUSANTARA" text="MSI | MEKANIK HELPER | CIKARANG" image={logo}/>
		<SHN />
		<Footer />
	</div>
  )
}

export default Shn_Mh
