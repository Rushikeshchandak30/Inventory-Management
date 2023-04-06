import React from "react";
import { useState } from 'react';

function Payment() {
  const [inputs, setInputs] = useState({});

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs(values => ({...values, [name]: value}))
  }

  const handleSubmit = (event) => {
    event.preventDefault();
    console.log(inputs);
  }

  return (
    <div className="flex">
    <form onSubmit={handleSubmit}>
      <label className="First">Enter payment_id:
      <input className="second"
        type="number" 
        name="paymentid" 
        value={inputs.paymentid || ""} 
        onChange={handleChange}
      />
      </label>
      <label className="First">Enter Payment Method:
      <input className="second"
        type="text" 
        name="method" 
        value={inputs.method || ""} 
        onChange={handleChange}
      />
      </label>
      <label className="First">Payment date:
      <input className="second"
        type="datetime" 
        name="paymentdate" 
        value={inputs.paymentdate|| ""} 
        onChange={handleChange}
      />
      </label>
      <label className="First">Customer_id:
      <input className="second"
        type="number" 
        name="customerid" 
        value={inputs.customerid || ""} 
        onChange={handleChange}
      />
      </label>
        <input className="button" type="submit" />
    </form>
    </div>
  )
}

export default Payment;