-- -- Use the mentalhealth database
-- USE mentalhealth;

-- -- Insert sample data into the Mental Health Facilities table
-- INSERT INTO `Mental Health Facilities` (`FacilityName`, `Location`, `ServicesOffered`, `FacilityType`, `Capacity`, `StaffCount`)
-- VALUES 
-- ('Hope Mental Health Center', 'New York, NY', 'Counseling, Therapy', 'Hospital', 100, 20),
-- ('Mind Wellness Clinic', 'Los Angeles, CA', 'Therapy, Support Groups', 'Clinic', 50, 10),
-- ('Serenity Counseling Center', 'Austin, TX', 'Counseling, Family Therapy', 'Private Practice', 30, 5),
-- ('Clear Mind Treatment Facility', 'Chicago, IL', 'Rehabilitation, Therapy', 'Rehabilitation Center', 70, 15);

-- -- Insert sample data into the Mental Health Disorders table
-- INSERT INTO `Mental Health Disorders` (`DisorderName`, `PrevalenceRate`, `AgeGroup`, `Gender`, `Region`)
-- VALUES
-- ('Depression', 8.5, '18-45', 'Female', 'New York, NY'),
-- ('Anxiety', 10.2, '18-45', 'Male', 'Los Angeles, CA'),
-- ('Bipolar Disorder', 3.7, '25-60', 'Both', 'Austin, TX'),
-- ('Schizophrenia', 1.1, '18-65', 'Both', 'Chicago, IL');

-- -- Insert sample data into the Socioeconomic Data Table
-- INSERT INTO `Socioeconomic Data Table` 
-- (`Region`, `AverageIncome`, `EmploymentRate`, `EducationLevel`, `PovertyRate`) 
-- VALUES 
-- ('New York, NY', 65000, 92.5, 'Bachelor\'s Degree', 10.3), 
-- ('Los Angeles, CA', 55000, 88.4, 'Some College', 12.6), 
-- ('Austin, TX', 70000, 94.2, 'Bachelor\'s Degree', 9.1), 
-- ('Chicago, IL', 60000, 90.3, 'High School Diploma', 11.8);


-- -- Insert sample data into the Facility_Disorder table
-- INSERT INTO `Facility_Disorder` (`FacilityID`, `DisorderID`)
-- VALUES
-- (1, 1), -- Hope Mental Health Center treats Depression
-- (2, 2), -- Mind Wellness Clinic treats Anxiety
-- (3, 3), -- Serenity Counseling Center treats Bipolar Disorder
-- (4, 4); -- Clear Mind Treatment Facility treats Schizophrenia

-- -- Insert sample data into the Region_Disorder table
-- INSERT INTO `Region_Disorder` (`RegionID`, `DisorderID`, `PrevalenceRate`)
-- VALUES
-- (1, 1, 8.5), -- New York has a prevalence of Depression
-- (2, 2, 10.2), -- Los Angeles has a prevalence of Anxiety
-- (3, 3, 3.7), -- Austin has a prevalence of Bipolar Disorder
-- (4, 4, 1.1); -- Chicago has a prevalence of Schizophrenia

-- -- -- Insert sample data into the Region_Facility table
-- -- INSERT INTO `Region_Facility` (`RegionID`, `FacilityID`)
-- -- VALUES
-- -- (1, 1), -- Hope Mental Health Center is located in New York
-- -- (2, 2), -- Mind Wellness Clinic is located in Los Angeles
-- -- (3, 3), -- Serenity Counseling Center is located in Austin
-- -- (4, 4); -- Clear Mind Treatment Facility is located in Chicago
USE mentalhealth;
-- SHOW TABLES;
-- -- RENAME TABLE `Mental Health Facilities` TO `MentalHealthFacilities`;
-- SELECT FacilityName, Location, ServicesOffered, FacilityType 
-- FROM `MentalHealthFacilities`
-- LIMIT 0, 1000;

-- SHOW TABLES;
-- SELECT d.DisorderName, rd.PrevalenceRate, s.Region
-- FROM `Mental Health Disorders` d
-- JOIN `Region_Disorder` rd ON d.DisorderID = rd.DisorderID
-- JOIN `Socioeconomic Data Table` s ON rd.RegionID = s.RegionID;
-- SELECT f.FacilityName, f.Capacity, f.StaffCount, COUNT(fd.DisorderID) AS NumberOfDisorders
-- FROM `MentalHealthFacilities` f
-- LEFT JOIN `Facility_Disorder` fd ON f.FacilityID = fd.FacilityID
-- GROUP BY f.FacilityID;
-- select * from facility_disorder;
-- select * from mentalhealthfacilities;
-- SELECT * FROM `Socioeconomic Data Table`;

-- SELECT * FROM `Region_Disorder`;
-- SELECT * FROM `Region_Facility`;
SELECT * FROM `Mental Health Disorders`;