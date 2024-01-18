import React, { useState } from 'react';
import Navbar from '../components/Navbar';
import CatalogPage from '../components/CatalogPage';
import HeroImg2 from '../components/HeroImg2';
import Footer from "../components/Footer";
import FilterModal from '../components/FilterModal';

const CatalogPageWrapper = () => {
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
      <HeroImg2 />
      <CatalogPage setIsModalOpen={setIsFilterModalVisible} />
      <Footer />
     <FilterModal />
    </div>
  );
};

export default CatalogPageWrapper;
