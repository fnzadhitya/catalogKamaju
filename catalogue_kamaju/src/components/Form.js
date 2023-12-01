import "./FormStyles.css";

import React from "react";

const Form = () => {
  return <div className="form">
    <form>
      <label>Namamu</label>
      <input type="text"></input>

      <label>Email</label>
      <input type="email"></input>

      <label>Subject</label>
      <input type="text"></input>

      <label>Pesan</label>
      <textarea rows={6} placeholder="Ketik pesanmu" />

      <button className="btn">Submit</button>
    </form>
  </div>;
};

export default Form;
