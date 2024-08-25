package com.MakerSharksSearchAPI.MakerSharksSearchAPI.Controller;

import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Entity.Supplier;
import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/supplier")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    @PostMapping("/query")
    public ResponseEntity<Page<Supplier>> querySuppliers(
            @RequestBody SupplierQuery query) {
        try {
            System.out.println("Received query: " + query);

            // Validate page and size
            if (query.getSize() <= 0) {
                return ResponseEntity.badRequest().body(null);
            }

            Page<Supplier> suppliers = supplierService.searchSuppliers(
                    query.getLocation(),
                    query.getNatureOfBusiness(),
                    query.getManufacturingProcesses(),
                    query.getPage(),
                    query.getSize()
            );
            return ResponseEntity.ok(suppliers);
        } catch (Exception e) {
            // Log the exception
            System.err.println("Error occurred: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<String> handleException(Exception e) {
        // Log the exception
        System.err.println("Exception: " + e.getMessage());
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred: " + e.getMessage());
    }

    public static class SupplierQuery {
        private String location;
        private String natureOfBusiness;
        private String manufacturingProcesses;
        private int page;
        private int size;

        // Getters and Setters
        public String getLocation() {
            return location;
        }

        public void setLocation(String location) {
            this.location = location;
        }

        public String getNatureOfBusiness() {
            return natureOfBusiness;
        }

        public void setNatureOfBusiness(String natureOfBusiness) {
            this.natureOfBusiness = natureOfBusiness;
        }

        public String getManufacturingProcesses() {
            return manufacturingProcesses;
        }

        public void setManufacturingProcesses(String manufacturingProcesses) {
            this.manufacturingProcesses = manufacturingProcesses;
        }

        public int getPage() {
            return page;
        }

        public void setPage(int page) {
            this.page = page;
        }

        public int getSize() {
            return size;
        }

        public void setSize(int size) {
            this.size = size;
        }
    }
}
