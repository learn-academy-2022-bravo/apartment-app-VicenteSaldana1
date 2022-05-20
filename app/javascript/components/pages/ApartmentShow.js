import React, { Component } from "react";

class ApartmentShow extends Component {
  render() {
    let { apartment } = this.props 
    return (
      <>
      <h3>Beautiful Apartment Available</h3>
      {apartment &&
      <div>
        <p>Street: {apartment.street}</p>
        <p>City: {apartment.city}</p>
        <p>State: {apartment.state}</p>
        <p>Price: {apartment.price}</p>
        <p>Bedrooms: {apartment.bedrooms}</p>
        <p>Bathrooms: {apartment.bathrooms}</p>
        <p>Pets: {apartment.pets}</p>
        <p>Manager: {apartment.manager}</p>
        <p>Manager Email: {apartment. email}</p>
        <img src={apartment.image} width="400px" />
      </div>
      }
    </>)
  }
}
 
export default ApartmentShow;
