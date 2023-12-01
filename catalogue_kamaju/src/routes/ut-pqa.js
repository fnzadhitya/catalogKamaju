import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import UT from '../components/customer/ut-pqa';
import HeroImg2 from '../components/HeroImg2';

const Ut_Pqa = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="UNITED TRACTORS" text="SCV | PPC & QA | ALL AREA" />
		<UT />
		<Footer />
	</div>
  )
}

export default Ut_Pqa
