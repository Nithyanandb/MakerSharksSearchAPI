package com.MakerSharksSearchAPI.MakerSharksSearchAPI.Repository;

import com.MakerSharksSearchAPI.MakerSharksSearchAPI.Model.Supplier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Long> {
    Page<Supplier> findByLocationAndNatureOfBusinessAndManufacturingProcesses(
            String location, String natureOfBusiness, String manufacturingProcesses, Pageable pageable);
}
