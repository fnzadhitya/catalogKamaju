import React, { useState } from 'react';
import Navbar from "../components/Navbar";
import HeroImg from "../components/HeroImg";
import Footer from "../components/Footer";
import FilterModal from '../components/FilterModal';

const Home = () => {
  const [isFilterModalVisible, setIsFilterModalVisible] = useState(false);

  const handleFilterClick = () => {
    setIsFilterModalVisible(true);
  };

  const handleFilterModalClose = () => {
    setIsFilterModalVisible(false);
  };

  return (
    <div>
      <Navbar onFilterClick={handleFilterClick} />
      <HeroImg />
      <Footer />
      <FilterModal onClose={handleFilterModalClose} isFilterModalVisible={isFilterModalVisible} />
    </div>
  );
};

export default Home;
