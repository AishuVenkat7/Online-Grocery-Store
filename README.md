# Online Grocery Store Application

## Overview

This is a web-based grocery store application built using **Ruby on Rails**. The online grocery store application is a digital platform that enables users to conveniently
purchase groceries from the comfort of their homes. Users can browse through a wide range of products, including fresh produce, pantry staples, beverages, and more. The application typically offers a user-friendly interface, allowing users to browse and purchase grocery items, manage their shopping carts, and place orders online. The application supports user authentication using Devise and provides separate views for customers and administrators.

## Features

### Shopper View
- **Browse Products**: Users can browse and search products based on name, description, or price.
- **Category Filtering**: Products can be filtered by category.
- **Add to Cart**: Items can be added to the cart, and users can modify quantities or remove items.
- **Checkout**: Users can proceed to checkout, provide their contact information, select a payment method, and place orders.
- **Order History**: Users can view past orders by entering their email address.

### Admin View
- **Authentication**: Admin access is secured with Devise authentication.
- **Product Management**: Admins can add, edit, delete, and search products.
- **Category Filtering**: Products can be filtered by category.
- **Order Management**: Admins can view and manage customer orders (in case of returning products).

## Setup and Installation

1. **Database Migration**:
   ```bash
   rails db:migrate
   rails db:migrate:status
   ```
2. **Seed the Database**:
   ```bash
   rails db:seed
   ```
3. **Start the Server**:
   ```bash
   rails server
   ```
4. **Access the Application**: Open your browser and go to `http://localhost:3000`.

## Authentication
- **Devise** is used for both shopper and admin authentication.
- Run the following commands to set up Devise:
   ```bash
   bundle add devise
   rails generate devise:install
   rails generate devise User
   rails db:migrate
   ```

## Screenshots

### Admin View

<img width="969" alt="admin signup" src="https://github.com/user-attachments/assets/0d3945a0-53a2-445e-ba6e-8058b7e5bca2">
<img width="969" alt="admin home page" src="https://github.com/user-attachments/assets/1b151dde-bb2a-4e24-810f-eb6d728c0b6f">
<img width="969" alt="admin single prod view" src="https://github.com/user-attachments/assets/d952e19c-c5b5-4a2c-bd20-36ab95d0c157">
<img width="962" alt="admin product added" src="https://github.com/user-attachments/assets/62441890-5e5c-44da-81d3-2cbd54117dcc">
<img width="744" alt="admin edit product" src="https://github.com/user-attachments/assets/8d7135b2-370a-4c7a-ad78-f28c6c0feabd">

### Shopper View

<img width="962" alt="home page" src="https://github.com/user-attachments/assets/779b4f37-3479-4cbc-9495-d981b47bb3ee">
<img width="962" alt="single prod view" src="https://github.com/user-attachments/assets/69217c14-0117-4459-9ce5-93bcd44e70ae">
<img width="959" alt="search" src="https://github.com/user-attachments/assets/d5436234-209e-4131-97dc-d3562a94bca9">
<img width="962" alt="shopping cart" src="https://github.com/user-attachments/assets/a93f3cb7-0abe-4497-b163-87d8bc058fcd">
<img width="582" alt="checkout" src="https://github.com/user-attachments/assets/404a176c-977e-4551-b421-ec1b91564b31">
<img width="966" alt="search prev order" src="https://github.com/user-attachments/assets/3220313f-60bf-4acd-8d78-6a4f9189dfa1">
<img width="937" alt="prev orders" src="https://github.com/user-attachments/assets/bda47c33-3737-4289-82d6-e1ed4ab545ed">



