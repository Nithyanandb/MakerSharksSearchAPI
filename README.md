
# Makersharks Search API

## Overview

The Makersharks Search API is a Spring Boot application designed to help users find manufacturers based on various criteria, such as location, business nature, and manufacturing processes.

### Components

- **Controller (`SupplierController`):**
  - Handles HTTP POST requests to `/api/supplier/query`.
  - Receives query parameters via `SupplierQueryDTO`.
  - Delegates the request to `SupplierService` to retrieve results.

- **Service (`SupplierService`):**
  - Implements business logic for searching suppliers based on input parameters.
  - Interacts with the `SupplierRepository` to fetch data from the database.

- **Repository (`SupplierRepository`):**
  - Extends `JpaRepository`.
  - Includes a custom query method for searching suppliers based on the specified criteria.

- **Entity (`Supplier`):**
  - Represents a supplier in the database with fields such as company name, website, location, nature of business, and manufacturing processes.

- **DTO (`SupplierQueryDTO`):**
  - A Data Transfer Object used for validating and transferring query parameters.
  - Includes fields like `location`, `natureOfBusiness`, and `manufacturingProcesses`, with validation annotations.

- **Exception Handling (`GlobalExceptionHandler`):**
  - Provides custom error responses for validation exceptions and other errors.

- **Swagger Configuration (`SwaggerConfig`):**
  - Configures Swagger for API documentation, enabling easy testing and exploration of the API.

## API Endpoints

### Search Supplier

- **URL:** `/api/supplier/query`
- **Method:** POST
- **Description:** Retrieve a list of manufacturers based on the given location, nature of business, and manufacturing processes.
- **Request Body:**

  ```json
  {
    "location": "Chennai",
    "natureOfBusiness": "",
    "manufacturingProcesses": "",
    "page": 0,
    "size": 10
  }
  ```

**Request Parameters:**

- `location`: The location of the supplier.
- `natureOfBusiness`: The nature of business (e.g., small_scale, medium_scale, large_scale).
- `manufacturingProcesses`: The manufacturing process (e.g., moulding, 3d_printing, casting, coating).
- `page` (optional): The page number for pagination.
- `size` (optional): The number of results per page.

**Example Request:**

Using `curl`:
```bash
curl -X POST "http://localhost:8080/api/supplier/query" \
-H "Content-Type: application/json" \
-d "{\"location\":\"Chennai\",\"natureOfBusiness\":\"\",\"manufacturingProcesses\":\"\",\"page\":0,\"size\":10}"
```

Using Postman:

```json
{
  "location": "Chennai",
  "natureOfBusiness": "small_scale",
  "manufacturingProcesses": "3d_printing"
}
```

## Conclusion

This API provides an efficient way to search for suppliers based on specific criteria, facilitating easier discovery of manufacturers for different business needs.
