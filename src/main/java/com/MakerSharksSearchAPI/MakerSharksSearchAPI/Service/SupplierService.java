package com.MakerSharksSearchAPI.MakerSharksSearchAPI.Service;

import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Entity.Supplier;
import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Repository.SupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class SupplierService {

    @Autowired
    private SupplierRepository supplierRepository;

    public Page<Supplier> searchSuppliers(String location, String natureOfBusiness, String manufacturingProcesses, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return supplierRepository.findByLocationAndNatureOfBusinessAndManufacturingProcesses(
                location, natureOfBusiness, manufacturingProcesses, pageable);
    }
}
