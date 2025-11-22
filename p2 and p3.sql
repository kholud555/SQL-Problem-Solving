--Get all vehicles made between 1950 and 2000
select * from VehicleDetails
where VehicleDetails.Year between 1950 and 2000;

--Get number vehicles made between 1950 and 2000
select NumberOfVehicles = count(*) from VehicleDetails
where Year between 1950 and 2000;