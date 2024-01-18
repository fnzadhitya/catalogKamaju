import React, { useState, useEffect } from 'react';
import './ctgStyle.css';
import Lightbox from './Lightbox';
import { useParams } from 'react-router-dom';

const CatalogPage = () => {
  const { customer_id,job_id } = useParams();
  console.log("Params ID",customer_id);
  console.log("Params ID",job_id);
  const [seragamData, setSeragamData] = useState([]);
  const [apdData, setAPDData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);
  const [lightboxData, setLightboxData] = useState(null);
  const [isModalOpen, setIsModalOpen] = useState(false);

  // const customer_id = localStorage.getItem('customer_id');
  // const job_id = localStorage.getItem('job_id');

  useEffect(() => {
    const fetchDataWithFilter = async () => {

      fetch(`http://localhost/catalog/conf/api.php?customer_id=${customer_id}&job_id=${job_id}`)
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          setSeragamData(data.seragam);
          setAPDData(data.apd);
          setIsLoading(false);
          
        })
        .catch(error => {
          setError(error);
          setIsLoading(false);
        });
    };

    fetchDataWithFilter();
  }, []);

  const openLightbox = (photoUrl, index, type) => {
    setLightboxData({ photoUrl, index, type });
  };

  const closeLightbox = () => {
    setLightboxData(null);
  };

  if (isLoading) {
    return <p>Loading...</p>;
  }

  if (error) {
    return <p>Error: {error.message}</p>;
  }

  return (
    <div className="content">
      <h2>Seragam</h2>
      <div className="container catalog_container">
        {seragamData.map((item, index) => (
          <div key={item.id_seragam} className="catalog_left">
            <h3>{item.nama_seragam}</h3>
            <div className="seragam">
              <img
                className={`seragam1 ${lightboxData && lightboxData.type === 'seragam' && lightboxData.index === index ? 'zoom-in' : 'zoom-out'}`}
                src={`http://localhost/catalog/app/foto/${item.foto1}`}
                alt=""
                onClick={() => openLightbox(`http://localhost/catalog/app/foto/${item.foto1}`, index, 'seragam')}
              />
              {item.foto2 && (
                <img
                  className={`seragam2 ${lightboxData && lightboxData.type === 'seragam' && lightboxData.index === index ? 'zoom-in' : 'zoom-out'}`}
                  src={`http://localhost/catalog/app/foto/${item.foto2}`}
                  alt="foto2"
                  onClick={() => openLightbox(`http://localhost/catalog/app/foto/${item.foto2}`, index, 'seragam')}
                />
              )}
            </div>
            <br />
            <div className="catalog_content">
            {item.jumlah && (
              <article className="catalog_details">
              <div>
                <small className="text-light">JUMLAH : {item.jumlah}</small>
              </div>
              </article>
            )}
            {item.warna && (
              <article className="catalog_details">
              <div>
                <small className="text-light">WARNA : {item.warna}</small>
              </div>
              </article>
            )}
            {item.bahan && (
              <article className="catalog_details">
              <div>
                <small className="text-light">BAHAN : {item.bahan}</small>
              </div>
              </article>
            )}
            {item.logo && (
              <article className="catalog_details">
              <div>
                <small className="text-light">LOGO : {item.logo}</small>
              </div>
              </article>
            )}
            {item.scotlight && (
              <article className="catalog_details">
              <div>
                <small className="text-light">SCOTLIGHT : {item.scotlight}</small>
              </div>
              </article>
            )}
            </div>
          </div>
        ))}
      </div>

      <br />

      <h2>APD</h2>
      <div className="container catalog_container">
        {apdData.map((item, index) => (
          <div key={item.id_apd} className="catalog_left">
            <h3>{item.nama_apd}</h3>
            <div className="seragam">
              <img
                className={`seragam1 ${lightboxData && lightboxData.type === 'apd' && lightboxData.index === index ? 'zoom-in' : 'zoom-out'}`}
                src={`http://localhost/catalog/app/foto/${item.foto}`}
                alt="foto1"
                onClick={() => openLightbox(`http://localhost/catalog/app/foto/${item.foto}`, index, 'apd')}
              />
              {item.foto2 && (
                <img
                  className={`seragam2 ${lightboxData && lightboxData.type === 'apd' && lightboxData.index === index ? 'zoom-in' : 'zoom-out'}`}
                  src={`http://localhost/catalog/app/foto/${item.foto2}`}
                  alt="foto2"
                  onClick={() => openLightbox(`http://localhost/catalog/app/foto/${item.foto2}`, index, 'apd')}
                />
              )}
            </div>
            <br />
            <div className="catalog_content">
            {item.jumlah && (
              <article className="catalog_details">
              <div>
                <small className="text-light">JUMLAH : {item.jumlah}</small>
              </div>
              </article>
            )}
            {item.merk && (
              <article className="catalog_details">
              <div>
                <small className="text-light">MERK : {item.merk}</small>
              </div>
              </article>
            )}
            {item.warna && (
              <article className="catalog_details">
              <div>
                <small className="text-light">WARNA : {item.warna}</small>
              </div>
              </article>
            )}
            {item.type && (
              <article className="catalog_details">
              <div>
                <small className="text-light">TYPE : {item.type}</small>
              </div>
              </article>
            )}
            </div>
          </div>
        ))}
      </div>
      {lightboxData && <Lightbox imageUrl={lightboxData.photoUrl} onClose={closeLightbox} />}
    </div>
  );
};

export default CatalogPage;
