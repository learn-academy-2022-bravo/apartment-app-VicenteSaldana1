import React, { Component } from "react";
import { NavLink } from "react-router-dom";
import { Card, CardTitle, Col, Button } from "reactstrap";

class ApartmentIndex extends Component {
  render() {
    return (
      <>
        <h3>Apartment Listings</h3>
        <Col sm="6">
          {this.props.apartments &&
            this.props.apartments.map(apartment => {
              return (
                <Card body key={apartment.id}>
                  <CardTitle>
                    <h4>Street:</h4>
                    <h4>{apartment.street}</h4>
                    <h4>City:</h4>
                    <h4>{apartment.city}</h4>
                    <h4>Bedrooms:</h4>
                    <h4>{apartment.bedrooms}</h4>
                    <img src={apartment.image} width="400px" />

                    <Button className="apartmentshow-btn">
                    <NavLink to={`/apartmentshow/${apartment.id}`}>View Apartment </NavLink>
                    </Button>
                  </CardTitle>
                </Card>
              );
            })}
        </Col>
      </>
    );
  }
}

export default ApartmentIndex;
