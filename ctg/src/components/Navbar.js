// Navbar.js
import React, { useState, useEffect, useRef } from 'react';
import { Link } from 'react-router-dom';
import { FaBars, FaTimes } from 'react-icons/fa';
import FilterModal from './FilterModal';
import './Navbar.css';

const Navbar = ({ onFilterClick, onCatalogClick }) => {
  const [isMobileMenuActive, setIsMobileMenuActive] = useState(false);
  const [isFilterModalVisible, setIsFilterModalVisible] = useState(false);
  const menuRef = useRef(null);

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (menuRef.current && !menuRef.current.contains(event.target)) {
        setIsMobileMenuActive(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  const handleMobileMenuToggle = () => {
    setIsMobileMenuActive(!isMobileMenuActive);
  };

  const handleFilterClick = () => {
    setIsFilterModalVisible(true);
  };

  const closeFilterModal = () => {
    setIsFilterModalVisible(false);
  };

  return (
    <>
      <div className={`header ${isMobileMenuActive ? 'header-mobile-active' : ''}`} ref={menuRef}>
        <Link to="/">
          <h1>Catalog<span>Kamaju</span></h1>
        </Link>
        <div className="menu-toggle" onClick={handleMobileMenuToggle}>
          {isMobileMenuActive ? (
            <FaTimes size={20} style={{ color: 'rgba(0, 0, 0, 0.8)' }} />
          ) : (
            <FaBars size={20} style={{ color: '#fff', marginRight: '-2rem' }} />
          )}
        </div>
        <ul className={`nav-menu ${isMobileMenuActive ? 'mobile-active' : ''}`}>
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <div className="filter-button" onClick={handleFilterClick}>
              Filter
            </div>
          </li>
          <li>
            <a href="http://localhost/catalog">Login</a>
          </li>
        </ul>
      </div>
      {isFilterModalVisible && (
        <div className="modal-container">
          <FilterModal onClose={closeFilterModal} isFilterModalVisible={isFilterModalVisible} />
        </div>
      )}
    </>
  );
};

export default Navbar;
