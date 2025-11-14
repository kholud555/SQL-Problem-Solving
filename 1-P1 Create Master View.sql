-- Problem 1 => Create Master View 

create view Vehicle_Master_Details 
as 
select VD.ID , VD.MakeID , Makes.Make,
VD.ModelID , MakeModels.ModelName,
VD.SubModelID , SubModels.SubModelName,
VD.BodyID , Bodies.BodyName,


VD.Vehicle_Display_Name,VD.Year,

VD.DriveTypeID, DriveTypes.DriveTypeName,

VD.Engine , VD.Engine_CC ,VD.Engine_Cylinders,
VD.Engine_Liter_Display, 
VD.FuelTypeID , FuelTypes.FuelTypeName
, VD.NumDoors

from VehicleDetails as VD
inner join Makes
on VD.MakeID = Makes.MakeID
inner join MakeModels
on VD.ModelID = MakeModels.ModelID
inner join SubModels
on VD.SubModelID = SubModels.SubModelID
inner join Bodies
on VD.BodyID = Bodies.BodyID
inner join DriveTypes 
on VD.DriveTypeID = DriveTypes.DriveTypeID
inner join FuelTypes
on VD.FuelTypeID = FuelTypes.FuelTypeID

select * from Vehicle_Master_Details;

Drop view Vehicle_Master_Details;
