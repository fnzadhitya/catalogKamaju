import React from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Home from './routes/Home';
import CatalogPageWrapper from './routes/CatalogPageWrapper';
import FilterModal from './components/FilterModal';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/catalog/:customer_id/:job_id" element={<CatalogPageWrapper />} />
      </Routes>
      <FilterModal />
    </Router>
  );
}

export default App;
