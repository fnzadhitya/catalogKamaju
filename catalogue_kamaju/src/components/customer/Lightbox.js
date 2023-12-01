import React from 'react';
import './Lightbox.css';

const Lightbox = ({ imageUrl, description, onClose }) => {
  const handleImageError = () => {
    console.error("Failed to load image:", imageUrl);
  };

  return (
    <div className="lightbox-overlay" onClick={onClose}>
      <div className="lightbox-container">
        <img
          src={imageUrl}
          alt="lightbox"
          className="lightbox-image"
          onError={handleImageError}
        />
        {description && <p className="image-description">{description}</p>}
      </div>
    </div>
  );
};

export default Lightbox;