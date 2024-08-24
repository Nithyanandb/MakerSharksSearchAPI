Create database searchdb;

use searchdb;

CREATE TABLE Supplier (
    supplierId BIGINT AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    website VARCHAR(255),
    location VARCHAR(255),
    natureOfBusiness VARCHAR(255),
    manufacturingProcesses VARCHAR(255)
);


-- Insert more realistic and detailed data into the Supplier table
INSERT INTO Supplier (company_name, website, location, nature_of_business, manufacturing_processes)
VALUES 
    ('Moulders Pvt Ltd', 'http://chennaimoulders.com', 'Chennai', 'small_scale', 'moulding'),
    ('Casting Co.', 'http://mumbaicasting.com', 'Mumbai', 'medium_scale', 'casting'),
    ('Forging Industries', 'http://delhiforging.com', 'Delhi', 'large_scale', 'forging'),
    ('Machining Works', 'http://bangaloremachining.com', 'Bengaluru', 'small_scale', 'machining'),
    ('Welders Ltd', 'http://hyderabadwelders.com', 'Hyderabad', 'medium_scale', 'welding'),
    ('Assembly Services', 'http://puneassembly.com', 'Pune', 'large_scale', 'assembly'),
    ('Polishing Experts', 'http://chennaipolishing.com', 'Chennai', 'small_scale', 'polishing'),
    ('Testing Solutions', 'http://mumbaitesting.com', 'Mumbai', 'medium_scale', 'testing'),
    ('Packaging Corp.', 'http://delhipackaging.com', 'Delhi', 'large_scale', 'packaging'),
    ('Cutting Edge Pvt Ltd', 'http://bangalorecuttingedge.com', 'Bengaluru', 'small_scale', 'cutting');
