import React, { useState, useEffect, useRef } from "react";
import { Link } from "react-router-dom";
import { FaBars, FaTimes } from "react-icons/fa";
import "./NavbarStyles.css";

const Navbar = () => {
  const [isMobileMenuActive, setIsMobileMenuActive] = useState(false);
  const [submenuState, setSubmenuState] = useState({}); 
  const menuRef = useRef(null);

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (menuRef.current && !menuRef.current.contains(event.target)) {
        setIsMobileMenuActive(false);
        setSubmenuState({});
      }
    };

    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, []);

  const handleMobileMenuToggle = () => {
    setIsMobileMenuActive(!isMobileMenuActive);
    setSubmenuState({});
  };

  const handleSubmenuToggle = (menu) => {
    setSubmenuState((prev) => ({
      ...prev,
      [menu]: !prev[menu],
    }));
  };

  return (
    <div className={`header ${isMobileMenuActive ? "header-mobile-active" : ""}`}>
      <Link to="/">
        <h1>Catalog</h1>
      </Link>
      <div className="menu-toggle" onClick={handleMobileMenuToggle}>
        {isMobileMenuActive ? <FaTimes size={20} style={{ color: "#fff" }} /> : <FaBars size={20} style={{ color: "#fff" }} />}
      </div>
      <ul className={`nav-menu ${isMobileMenuActive ? "mobile-active" : ""}`} ref={menuRef}>
        <li>
          <a href="/">Home</a>
        </li>
        <li className={`nav-item dropdown ${submenuState["customer"] ? "active" : ""}`}>
          <div className="nav-link" onClick={() => handleSubmenuToggle("customer")}>
            Customer <i className={`fas fa-caret-${submenuState["customer"] ? "up" : "down"}`}></i>
          </div>
          {submenuState["customer"] && (
            <ul className="dropdown-menu">
              <li>
                <a href="/abb">Asmin Bara Bronang</a>
              </li>
              <li>
                <a href="/bjs">Bhumi Jepara Service</a>
              </li>
              <li className={`nav-item dropdown ${submenuState["binaPertiwi"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("binaPertiwi")}>
                  Bina Pertiwi <i className={`fas fa-caret-${submenuState["binaPertiwi"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["binaPertiwi"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/bp">Bina Pertiwi</a>
                    </li>
                    <li>
                      <a href="/bp-mo">Bina Pertiwi Mekanik Optional</a>
                    </li>
                    <li>
                      <a href="/bp-hp">Bina Pertiwi Hopman</a>
                    </li>
                    <li>
                      <a href="/bp-hs">Bina Pertiwi Hoseman</a>
                    </li>
                    <li>
                      <a href="/bp-bat">Bina Pertiwi Operator BAT</a>
                    </li>
                    <li>
                      <a href="/bp-p2g-p2u">Bina Pertiwi P2G P2U</a>
                    </li>
                    <li>
                      <a href="/bp-it">Bina Pertiwi Inspector Tyreman</a>
                    </li>
                  </ul>
                )}
              </li>
              <li>
                <a href="/bkm">Bintang Kalimantan Mandiri</a>
              </li>
              <li>
                <a href="/epn">Energia Prima Nusantara</a>
              </li>
              <li className={`nav-item dropdown ${submenuState["kpp"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("kpp")}>
                  Kalimantan Prima Persada <i className={`fas fa-caret-${submenuState["kpp"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["kpp"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/kpp-op">Kalimantan Prima Persada Operator</a>
                    </li>
                    <li>
                      <a href="/kpp-wd">Kalimantan Prima Persada Welder</a>
                    </li>
                    <li>
                      <a href="/kpp-mk">Kalimantan Prima Persada Mekanik</a>
                    </li>
                  </ul>
                )}
              </li>
              <li>
                <a href="/kmsi">Komatsu Marketing and Support Indonesia</a>
              </li>
              <li>
                <a href="/kra">Komatsu Remanufacturing Asia</a>
              </li>
              <li className={`nav-item dropdown ${submenuState["pama"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("pama")}>
                  Pamapersada Nusantara <i className={`fas fa-caret-${submenuState["pama"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["pama"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/pama-mr">Pamapersada Nusantara Mekanik Repairman</a>
                    </li>
                    <li>
                      <a href="/pama-wd">Pamapersada Nusantara Welder</a>
                    </li>
                  </ul>
                )}
              </li>
              <li>
                <a href="/ppa">Putra Perkasa Abadi</a>
              </li>
              <li>
                <a href="/smm">Suprabari Mapanindi Mineral</a>  
              </li>
              <li className={`nav-item dropdown ${submenuState["shn"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("shn")}>
                  Swadaya Harapan Nusantara <i className={`fas fa-caret-${submenuState["shn"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["shn"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/shn-mh">Swadaya Harapan Nusantara Mekanik Helper</a>
                    </li>
                    <li>
                      <a href="/shn-of">Swadaya Harapan Nusantara Operator Forklift</a>
                    </li>
                    <li>
                      <a href="/shn-mg">Swadaya Harapan Nusantara Mekanik Genset</a>
                    </li>
                  </ul>
                )}
              </li>
              <li>
                <a href="/top">Telen Orbit Prima</a>
              </li>
              <li className={`nav-item dropdown ${submenuState["tn"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("tn")}>
                  Traktor Nusantara <i className={`fas fa-caret-${submenuState["tn"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["tn"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/tn-mh">Traktor Nusantara Mekanik Helper</a>
                    </li>
                    <li>
                      <a href="/tn-yc">Traktor Nusantara Yard Crew</a>
                    </li>
                  </ul>
                )}
              </li>
              <li className={`nav-item dropdown ${submenuState["tbp"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("tbp")}>
                  Triatra & Bina Pertiwi <i className={`fas fa-caret-${submenuState["tbp"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["tbp"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/tbp-mk">Triatra & Bina Pertiwi Mekanik</a>
                    </li>
                    <li>
                      <a href="/tbp-ad">Triatra & Bina Pertiwi Admin</a>
                    </li>
                  </ul>
                )}
              </li>
              <li className={`nav-item dropdown ${submenuState["ut"] ? "active" : ""}`}>
                <div className="nav-link" onClick={() => handleSubmenuToggle("ut")}>
                  United Tractors <i className={`fas fa-caret-${submenuState["ut"] ? "up" : "down"}`}></i>
                </div>
                {submenuState["ut"] && (
                  <ul className="dropdown-menu">
                    <li>
                      <a href="/ut-cs">United Tractors Cop Site</a>
                    </li>
                    <li>
                      <a href="/ut-p2u">United Tractors P2U</a>
                    </li>
                    <li>
                      <a href="/ut-mst">United Tractors Mekanik Site Tj. Enim</a>
                    </li>
                    <li>
                      <a href="/ut-msb">United Tractors Mekanik Site Berau</a>
                    </li>
                    <li>
                      <a href="/ut-mcs">United Tractors Mekanik Cabang & Site</a>
                    </li>
                    <li>
                      <a href="/ut-pqa">United Tractors PPC & QA</a>
                    </li>
                    <li>
                      <a href="/ut-ads">United Tractors Admin Site</a>
                    </li>
                    <li>
                      <a href="/ut-ds">United Tractors Driver Site</a>
                    </li>
                    <li>
                      <a href="/ut-os">United Tractors Operator Site</a>
                    </li>
                    <li>
                      <a href="/ut-fo">United Tractors Facility Officer</a>
                    </li>
                    <li>
                      <a href="/ut-wd">United Tractors Welder</a>
                    </li>
                    <li>
                      <a href="/ut-mos">United Tractors Mekanik Optional Site</a>
                    </li>
                    <li>
                      <a href="/ut-moc">United Tractors Mekanik Optional Cabang</a>
                    </li>
                    <li>
                      <a href="/ut-yc">United Tractors Yard Crew</a>
                    </li>
                  </ul>
                )}
              </li>
              <li>
                <a href="/utpe">United Tractors Pandu Engineering</a>
              </li>
            </ul>
          )}
        </li>
      </ul>
    </div>
  );
};

export default Navbar;
