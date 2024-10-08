# Snowboard E-Shop Full Stack Application

## Introduction

Welcome to the Snowboard E-Shop, a sophisticated full-stack web application. This application offers a modern platform for browsing and purchasing snowboarding gear, utilizing powerful technologies such as React, .NET 8, and Redux.

## Technologies

- **Frontend**: React with TypeScript, styled using MUI
- **Backend**: C# with .NET 8, leveraging Entity Framework Core
- **Database**: Setup with SQL databases

## Key Features

### Basic Features

- **Responsive Design**: Optimized for desktop devices to accommodate detailed configurations and high-resolution images that enhance the browsing and shopping experience.
- **CRUD Functionality**: Full create, read, update, and delete capabilities for products within the store.
- **Dynamic Routing**: Implemented with React Router to manage navigation across different components.
- **Automapper**: Utilizes Automapper to simplify the mapping of data models to DTOs, enhancing the efficiency of data manipulation.
- **React Hook Form**: Incorporates React Hook Form to manage form state in the React components, providing a seamless and performant user form experience.

### Advanced Features

- **Theme Switching**: Dark and light mode preferences to improve user experience and accessibility.
- **State Management**: Utilizing Redux for efficient state management across the application.
- **Containerization**: Application containerization with Docker to ensure consistency across development, testing, and production environments.
- **Role-Based Authorization**: Implements ASP.NET Identity for secure user authentication and role-based access, ensuring that different users experience appropriate interactions and access rights.
- **Paging, Sorting, Searching, and Filtering**: Advanced functionalities that improve data retrieval efficiency and user experience by allowing users to easily navigate large datasets and find products they are interested in.

### Desktop Optimization Justification

- **Target Audience and Usage**: Tailored for professional snowboarders and enthusiasts who prefer using desktops for detailed reviews and purchases. Desktop optimization allows for enhanced feature display and user interaction that are integral to our product offerings.

## Highlight Feature

The integration of **theme switching** capability is a significant achievement, enhancing user experience by allowing visual customization. This feature not only caters to user preferences but also demonstrates the application’s adaptability to user accessibility needs. <br>
Additionally, the use of **Stripe for secure online payments** and **Cloudinary for image management** are significant advancements in this project. These features enhance the e-commerce capabilities of the Snowboard E-Shop, enabling seamless checkout experiences and dynamic, efficient management of product images. 

- **Stripe Integration**: Implemented Stripe's API to handle secure and versatile payment options, including support for the new EU standards for 3D secure transactions. This not only makes the application compliant with modern payment processing standards but also ensures a trustworthy user experience.
- **Cloudinary for Images**: Leveraged Cloudinary to manage product images, allowing for automatic resizing, optimization, and fast delivery via CDN. This integration significantly improves the loading times and responsiveness of the application, enhancing the overall user experience.

## Getting Started

To set up and run the project locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Ryyytay/SnowboardEShop
   cd SnowboardEshop

Install dependencies:

# Frontend dependencies
cd frontend
npm install

# Backend dependencies
cd ../backend
dotnet restore
Run the application:

# Start the frontend
npm start

# Start the backend
dotnet run
Visit http://localhost:3000 in your browser to explore the Snowboard E-Shop.
