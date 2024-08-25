
use searchdb;

CREATE TABLE Supplier (
    supplier_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    website VARCHAR(255),
    location VARCHAR(255),
    nature_of_business VARCHAR(255),
    manufacturing_processes VARCHAR(255)
);


INSERT INTO Supplier (company_name, website, location, nature_of_business, manufacturing_processes)
VALUES
    ('Moulders Pvt Ltd', 'http://chennaimoulders.com', 'Chennai', 'small_scale', 'moulding'),
    ('Casting Co.', 'http://mumbaicasting.com', 'Mumbai', 'medium_scale', 'casting'),
    ('Forging Industries', 'http://delhiforging.com', 'Delhi', 'large_scale', 'forging'),
    ('Machining Works', 'http://bangaloremachining.com', 'Bengaluru', 'small_scale', 'machining'),
    ('Welders Ltd', 'http://hyderabadwelders.com', 'Hyderabad', 'medium_scale', 'welding'),
    ('Pune Assembly Services', 'http://puneassembly.com', 'Pune', 'large_scale', 'assembly'),
    ('Polishing Experts', 'http://chennaipolishing.com', 'Chennai', 'small_scale', 'polishing'),
    ('Testing Solutions', 'http://mumbaitesting.com', 'Mumbai', 'medium_scale', 'testing'),
    ('Packaging Corp.', 'http://delhipackaging.com', 'Delhi', 'large_scale', 'packaging'),
    ('Cutting Edge Pvt Ltd', 'http://bangalorecuttingedge.com', 'Bengaluru', 'small_scale', 'cutting');


INSERT INTO Supplier (company_name, website, location, nature_of_business, manufacturing_processes)
VALUES
    ('Precision Moulders', 'http://precisionmoulders.com', 'Chennai', 'small_scale', 'moulding'),
    ('Eco Castings', 'http://ecocastings.com', 'Mumbai', 'medium_scale', 'casting'),
    ('Advanced Forging', 'http://advancedforging.com', 'Delhi', 'large_scale', 'forging'),
    ('Precision Machining', 'http://precisionmachining.com', 'Bengaluru', 'small_scale', 'machining'),
    ('Welding Solutions', 'http://weldingsolutions.com', 'Hyderabad', 'medium_scale', 'welding'),
    ('Assembly Line Experts', 'http://assemblylineexperts.com', 'Pune', 'large_scale', 'assembly'),
    ('Elite Polishing', 'http://elitepolishing.com', 'Chennai', 'small_scale', 'polishing'),
    ('Smart Testing Labs', 'http://smarttestinglabs.com', 'Mumbai', 'medium_scale', 'testing'),
    ('Top Packaging Ltd', 'http://topackaging.com', 'Delhi', 'large_scale', 'packaging'),
    ('Edge Cutting Services', 'http://edgecuttingservices.com', 'Bengaluru', 'small_scale', 'cutting');


INSERT INTO Supplier (company_name, website, location, nature_of_business, manufacturing_processes)
VALUES
    ('NextGen Moulders', 'http://nextgenmoulders.com', 'Chennai', 'small_scale', 'moulding'),
    ('Urban Casting', 'http://urbancasting.com', 'Mumbai', 'medium_scale', 'casting'),
    ('Mega Forging', 'http://megaforging.com', 'Delhi', 'large_scale', 'forging'),
    ('High-Tech Machining', 'http://hightechmachining.com', 'Bengaluru', 'small_scale', 'machining'),
    ('Industrial Welders', 'http://industrialwelders.com', 'Hyderabad', 'medium_scale', 'welding'),
    ('Precision Assembly', 'http://precisionassembly.com', 'Pune', 'large_scale', 'assembly'),
    ('Supreme Polishing', 'http://supremepolishing.com', 'Chennai', 'small_scale', 'polishing'),
    ('Expert Testing', 'http://experttesting.com', 'Mumbai', 'medium_scale', 'testing'),
    ('Ultimate Packaging', 'http://ultimatepackaging.com', 'Delhi', 'large_scale', 'packaging'),
    ('Pro Cutting Ltd', 'http://procutting.com', 'Bengaluru', 'small_scale', 'cutting');

INSERT INTO Supplier (company_name, website, location, nature_of_business, manufacturing_processes)
VALUES
    ('Moulders Pvt Ltd', 'http://chennaimoulders.com', 'Chennai, India', 'small_scale', 'moulding'),
    ('Casting Co.', 'http://mumbaicasting.com', 'Mumbai, India', 'medium_scale', 'casting'),
    ('Forging Industries', 'http://delhiforging.com', 'Delhi, India', 'large_scale', 'forging'),
    ('Machining Works', 'http://bangaloremachining.com', 'Bengaluru, India', 'small_scale', 'machining'),
    ('Welders Ltd', 'http://hyderabadwelders.com', 'Hyderabad, India', 'medium_scale', 'welding'),
    ('Pune Assembly Services', 'http://puneassembly.com', 'Pune, India', 'large_scale', 'assembly'),
    ('Polishing Experts', 'http://chennaipolishing.com', 'Chennai, India', 'small_scale', 'polishing'),
    ('Testing Solutions', 'http://mumbaitesting.com', 'Mumbai, India', 'medium_scale', 'testing'),
    ('Packaging Corp.', 'http://delhipackaging.com', 'Delhi, India', 'large_scale', 'packaging'),
    ('Cutting Edge Pvt Ltd', 'http://bangalorecuttingedge.com', 'Bengaluru, India', 'small_scale', 'cutting'),

    ('Global Moulders', 'http://globalmoulders.com', 'New York, USA', 'small_scale', 'moulding'),
    ('American Casting', 'http://americancasting.com', 'Los Angeles, USA', 'medium_scale', 'casting'),
    ('US Forging', 'http://usforging.com', 'Chicago, USA', 'large_scale', 'forging'),
    ('Tech Machining', 'http://techmachining.com', 'San Francisco, USA', 'small_scale', 'machining'),
    ('Welding USA', 'http://weldingusa.com', 'Houston, USA', 'medium_scale', 'welding'),
    ('Assembly Inc.', 'http://assemblyinc.com', 'Seattle, USA', 'large_scale', 'assembly'),
    ('Precision Polishing', 'http://precisionpolishing.com', 'New York, USA', 'small_scale', 'polishing'),
    ('Advanced Testing', 'http://advancedtesting.com', 'Los Angeles, USA', 'medium_scale', 'testing'),
    ('Premier Packaging', 'http://premierpackaging.com', 'Chicago, USA', 'large_scale', 'packaging'),
    ('Cutting Edge USA', 'http://cuttingedgeusa.com', 'San Francisco, USA', 'small_scale', 'cutting'),

    ('Euro Moulders', 'http://euromoulders.com', 'Berlin, Germany', 'small_scale', 'moulding'),
    ('German Casting', 'http://germancasting.com', 'Munich, Germany', 'medium_scale', 'casting'),
    ('Deutsche Forging', 'http://deutscheforging.com', 'Hamburg, Germany', 'large_scale', 'forging'),
    ('Precision Tech', 'http://precisiontech.com', 'Frankfurt, Germany', 'small_scale', 'machining'),
    ('Welding Germany', 'http://weldinggermany.com', 'Düsseldorf, Germany', 'medium_scale', 'welding'),
    ('Assembly Experts', 'http://assemblyexperts.com', 'Stuttgart, Germany', 'large_scale', 'assembly'),
    ('Elite Polishing', 'http://elitepolishing.com', 'Berlin, Germany', 'small_scale', 'polishing'),
    ('Smart Testing', 'http://smarttesting.com', 'Munich, Germany', 'medium_scale', 'testing'),
    ('Top Packaging', 'http://toppackaging.com', 'Hamburg, Germany', 'large_scale', 'packaging'),
    ('Cutting Solutions', 'http://cuttingsolutions.com', 'Frankfurt, Germany', 'small_scale', 'cutting'),

    ('Asia Moulders', 'http://asiamoulders.com', 'Tokyo, Japan', 'small_scale', 'moulding'),
    ('Japanese Casting', 'http://japanesecasting.com', 'Osaka, Japan', 'medium_scale', 'casting'),
    ('Nihon Forging', 'http://nihonforging.com', 'Kyoto, Japan', 'large_scale', 'forging'),
    ('Tech Machining JP', 'http://techmachiningjp.com', 'Nagoya, Japan', 'small_scale', 'machining'),
    ('Welding Japan', 'http://weldingjapan.com', 'Fukuoka, Japan', 'medium_scale', 'welding'),
    ('Assembly Japan', 'http://assemblyjapan.com', 'Sapporo, Japan', 'large_scale', 'assembly'),
    ('Polishing Japan', 'http://polishingjapan.com', 'Tokyo, Japan', 'small_scale', 'polishing'),
    ('Testing Japan', 'http://testingjapan.com', 'Osaka, Japan', 'medium_scale', 'testing'),
    ('Packaging Japan', 'http://packagingjapan.com', 'Kyoto, Japan', 'large_scale', 'packaging'),
    ('Cutting Japan', 'http://cuttingjapan.com', 'Nagoya, Japan', 'small_scale', 'cutting'),

    ('Aussie Moulders', 'http://aussiemoulders.com', 'Sydney, Australia', 'small_scale', 'moulding'),
    ('Australian Casting', 'http://australiancasting.com', 'Melbourne, Australia', 'medium_scale', 'casting'),
    ('Oz Forging', 'http://ozforging.com', 'Brisbane, Australia', 'large_scale', 'forging'),
    ('Machining Oz', 'http://machiningoz.com', 'Perth, Australia', 'small_scale', 'machining'),
    ('Welding Australia', 'http://weldingaustralia.com', 'Adelaide, Australia', 'medium_scale', 'welding'),
    ('Assembly Australia', 'http://assemblyaustralia.com', 'Hobart, Australia', 'large_scale', 'assembly'),
    ('Polishing Australia', 'http://polishingaustralia.com', 'Sydney, Australia', 'small_scale', 'polishing'),
    ('Testing Australia', 'http://testingaustralia.com', 'Melbourne, Australia', 'medium_scale', 'testing'),
    ('Packaging Australia', 'http://packagingaustralia.com', 'Brisbane, Australia', 'large_scale', 'packaging'),
    ('Cutting Australia', 'http://cuttingaustralia.com', 'Perth, Australia', 'small_scale', 'cutting');
