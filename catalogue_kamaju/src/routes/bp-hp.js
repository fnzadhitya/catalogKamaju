import React from 'react';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import BP from '../components/customer/bp-hp';
import HeroImg2 from '../components/HeroImg2';

const Bp_Hp = () => {
  return (
	<div>
	  	<Navbar />
		<HeroImg2 heading="BINA PERTIWI" text="PSED | MAGANG HOPMAN & HOPMAN | ALL AREA" />
		<BP />
		<Footer />
	</div>
  )
}

export default Bp_Hp
