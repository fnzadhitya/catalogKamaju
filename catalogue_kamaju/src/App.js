import React from "react";
import "./index.css";
import { Route, Routes } from "react-router-dom";
import Home from "./routes/Home";
import ABB from "./routes/abb";
import BJS from "./routes/bjs";
import BP from "./routes/bp";
import BP_MO from "./routes/bp-mo";
import BP_HP from "./routes/bp-hp";
import BP_HS from "./routes/bp-hs";
import BP_BAT from "./routes/bp-bat";
import BP_P2G_P2U from "./routes/bp-p2g-p2u";
import BP_IT from "./routes/bp-it";
import BKM from "./routes/bkm";
import EPN from "./routes/epn";
import KPP_OP from "./routes/kpp-op";
import KPP_WD from "./routes/kpp-wd";
import KPP_MK from "./routes/kpp-mk";
import KMSI from "./routes/kmsi";
import KRA from "./routes/kra";
import PAMA_MR from "./routes/pama-mr";
import PAMA_WD from "./routes/pama-wd";
import PPA from "./routes/ppa";
import SMM from "./routes/smm";
import SHN_MH from "./routes/shn-mh";
import SHN_OF from "./routes/shn-of";
import SHN_MG from "./routes/shn-mg";
import TOP from "./routes/top";
import TN_MH from "./routes/tn-mh";
import TN_YC from "./routes/tn-yc";
import TBP_MK from "./routes/tbp-mk";
import TBP_AD from "./routes/tbp-ad";
import UT_CS from "./routes/ut-cs";
import UT_P2U from "./routes/ut-p2u";
import UT_MST from "./routes/ut-mst";
import UT_MSB from "./routes/ut-msb";
import UT_MCS from "./routes/ut-mcs";
import UT_PQA from "./routes/ut-pqa";
import UT_ADS from "./routes/ut-ads";
import UT_DS from "./routes/ut-ds";
import UT_OS from "./routes/ut-os";
import UT_FO from "./routes/ut-fo";
import UT_WD from "./routes/ut-wd";
import UT_MOS from "./routes/ut-mos";
import UT_MOC from "./routes/ut-moc";
import UT_YC from "./routes/ut-yc";
import UTPE from "./routes/utpe";


function App() {
  return (
    <>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/abb" element={<ABB />} />
        <Route path="/bjs" element={<BJS />} />
        <Route path="/bp" element={<BP />} />
        <Route path="/bp-mo" element={<BP_MO />} />
        <Route path="/bp-hp" element={<BP_HP />} />
        <Route path="/bp-hs" element={<BP_HS />} />
        <Route path="/bp-bat" element={<BP_BAT />} />
        <Route path="/bp-p2g-p2u" element={<BP_P2G_P2U />} />
        <Route path="/bp-it" element={<BP_IT />} />
        <Route path="/bkm" element={<BKM />} />
        <Route path="/epn" element={<EPN />} />
        <Route path="/kpp-op" element={<KPP_OP />} />
        <Route path="/kpp-wd" element={<KPP_WD />} />
        <Route path="/kpp-mk" element={<KPP_MK />} />
        <Route path="/kmsi" element={<KMSI />} />
        <Route path="/kra" element={<KRA />} />
        <Route path="/pama-mr" element={<PAMA_MR />} />
        <Route path="/pama-wd" element={<PAMA_WD />} />
        <Route path="/ppa" element={<PPA />} />
        <Route path="/smm" element={<SMM />} />
        <Route path="/shn-mh" element={<SHN_MH />} />
        <Route path="/shn-of" element={<SHN_OF />} />
        <Route path="/shn-mg" element={<SHN_MG />} />
        <Route path="/top" element={<TOP />} />
        <Route path="/tn-mh" element={<TN_MH />} />
        <Route path="/tn-yc" element={<TN_YC />} />
        <Route path="/tbp-mk" element={<TBP_MK />} />
        <Route path="/tbp-ad" element={<TBP_AD />} />
        <Route path="/ut-cs" element={<UT_CS />} />
        <Route path="/ut-p2u" element={<UT_P2U />} />
        <Route path="/ut-mst" element={<UT_MST />} />
        <Route path="/ut-msb" element={<UT_MSB />} />
        <Route path="/ut-mcs" element={<UT_MCS />} />
        <Route path="/ut-pqa" element={<UT_PQA />} />
        <Route path="/ut-ads" element={<UT_ADS />} />
        <Route path="/ut-ds" element={<UT_DS />} />
        <Route path="/ut-os" element={<UT_OS />} />
        <Route path="/ut-fo" element={<UT_FO />} />
        <Route path="/ut-wd" element={<UT_WD />} />
        <Route path="/ut-mos" element={<UT_MOS />} />
        <Route path="/ut-moc" element={<UT_MOC />} />
        <Route path="/ut-yc" element={<UT_YC />} />
        <Route path="/utpe" element={<UTPE />} />
      </Routes>
    </>
  );
}

export default App;
