package com.MakerSharksSearchAPI.MakerSharksSearchAPI.Controller;

import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Model.Supplier;
import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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
    public Page<Supplier> querySuppliers(
            @RequestBody SupplierQuery query) {
        return supplierService.searchSuppliers(
                query.getLocation(),
                query.getNatureOfBusiness(),
                query.getManufacturingProcesses(),
                query.getPage(),
                query.getSize()
        );
    }

    public static class SupplierQuery {
        private String location;
        private String natureOfBusiness;
        private String manufacturingProcesses;
        private int page;
        private int size;

        // Getters and setters

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
