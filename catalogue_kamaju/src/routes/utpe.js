import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UTPE from '../components/customer/utpe';
import HeroImg2 from '../components/HeroImg2';
import logo from '../assets/patria-utpe.png';

const Utpe = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS PANDU ENGINEERING" text="SVC | ALL JOB | ALL AREA" image={logo}/>
		<UTPE />
		<Footer />
	</div>
  )
}

export default Utpe
