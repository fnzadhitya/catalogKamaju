import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import EPN from '../components/customer/epn';
import HeroImg2 from '../components/HeroImg2';

const Epn = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="ENERGIA PRIMA NUSANTARA" text="PLNT | MEKANIK ELEKTRIK | JAKARTA" />
		<EPN />
		<Footer />
	</div>
  )
}

export default Epn
