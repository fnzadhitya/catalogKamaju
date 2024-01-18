import React, { useState, useRef, useEffect } from 'react';
import Select from 'react-select';
import './FilterModal.css';
import { useNavigate } from 'react-router-dom';

const FilterModal = ({ onClose, onApplyFilter, isFilterModalVisible }) => {
  const [filterData, setFilterData] = useState({
    customerId: '',
    jobId: '',
  });

  const navigate = useNavigate();
  const [customers, setCustomers] = useState([]);
  const [jobs, setJobs] = useState([]);
  const [seragamData, setSeragamData] = useState([]);
  const [apdData, setAPDData] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);
  const modalRef = useRef();

  useEffect(() => {
    const fetchCustomersAndJobs = async () => {
      try {
        const customersResponse = await fetch('http://localhost/catalog/conf/api_customer.php');
        const jobsResponse = await fetch('http://localhost/catalog/conf/api_job.php');

        if (!customersResponse.ok || !jobsResponse.ok) {
          throw new Error('Network response was not ok');
        }

        const customersData = await customersResponse.json();
        const jobsData = await jobsResponse.json();

        console.log('Customers:', customersData);
        console.log('Jobs:', jobsData);

        setCustomers(customersData);
        setJobs(jobsData);
      } catch (error) {
        console.error('Error fetching customers and jobs:', error);
      }
    };

    fetchCustomersAndJobs();
  }, []);

  // const fetchData = async () => {
  //   try {
  //     const response = await fetch(
  //       `http://localhost/catalog/conf/api.php?customer_id=${filterData.customerId}&job_id=${filterData.jobId}`
  //     );

  //     if (!response.ok) {
  //       throw new Error(`Network response was not ok: ${response.status} - ${response.statusText}`);
  //     }

  //     const contentType = response.headers.get('content-type');
  //     if (contentType && contentType.includes('application/json')) {
  //       // Response is JSON, continue parsing
  //       const data = await response.json();
  //       console.log('Filtered Data:', data);
  //       setSeragamData(data.seragam);
  //       setAPDData(data.apd);
  //     } else {
  //       // Response is not JSON, handle accordingly
  //       console.error('Response is not JSON:', await response.text());
  //       // Or do something appropriate for your application
  //     }

  //     setIsLoading(false);
  //   } catch (error) {
  //     console.error('Error fetching filtered data:', error);
  //     setError(error);
  //     setIsLoading(false);
  //   }
  // };

  const handleInputChange = (name, value) => {
    setFilterData((prevData) => ({ ...prevData, [name]: value }));
  };

  const handleApplyFilter = async () => {
    try {
      const response = await fetch(`http://localhost/catalog/conf/api.php?customer_id=${filterData.customerId}&job_id=${filterData.jobId}`);
      if (!response.ok) {
        throw new Error('Failed to fetch data');
      }
      const data = await response.json();
      const customer_id = filterData.customerId;
      const job_id = filterData.jobId;
      navigate(`/catalog/${customer_id}/${job_id}`);
      window.location.reload();
    } catch (error) {
      console.error(error);
    }
    console.log('handleApplyFilter dipanggil');
    console.log('filterData.customerId:', filterData.customerId);
    console.log('filterData.jobId:', filterData.jobId);
  };

  const handleCloseModal = () => {
    onClose();
  };

  const handleOutsideClick = (event) => {
    if (event.target === modalRef.current) {
      onClose();
    }
  };

  return (
    <div className={`modal ${isFilterModalVisible ? 'visible' : ''}`} onClick={handleOutsideClick}>
      {isFilterModalVisible && (
        <div className="modal-content" ref={modalRef}>
          <span className="close" onClick={handleCloseModal}>
            &times;
          </span>
          <h2>Filter</h2>
          <label>Customer:</label>
          <Select
            options={customers.map((customer) => ({ value: customer.id_customer, label: customer.nama_customer }))}
            onChange={(selectedOption) => handleInputChange('customerId', selectedOption.value)}
          />
          <label>Job:</label>
          <Select
            options={jobs.map((job) => ({ value: job.id_job, label: job.nama_job }))}
            onChange={(selectedOption) => handleInputChange('jobId', selectedOption.value)}
          />
          <button onClick={handleApplyFilter}>Apply</button>
          <button onClick={handleCloseModal}>Close</button>
          {isLoading && <p>Loading...</p>}
          {error && <p style={{ color: 'red' }}>Error: {error.message}</p>}
        </div>
      )}
    </div>
  );
};

export default FilterModal;
