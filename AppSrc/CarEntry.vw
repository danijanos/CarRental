// D:\DataFlex Projects\CarRental\AppSrc\CarEntry.vw
// CarEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cCarsDataDictionary.dd

ACTIVATE_VIEW Activate_oCarEntry FOR oCarEntry
Object oCarEntry is a dbView
    Set Location to 49 59
    Set Size to 158 311
    Set Label to "Car Entry"
    Set Border_Style to Border_Thick


    Object oCars_DD is a cCarsDataDictionary
    End_Object 

    Set Main_DD To oCars_DD
    Set Server  To oCars_DD



    Object oCarsCar_ID is a dbForm
        Entry_Item Cars.Car_ID
        Set Size to 13 42
        Set Location to 5 75
        Set peAnchors to anTopLeftRight
        Set Label to "Car ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        Set Focus_Mode to NonFocusable
    End_Object 

    Object oCarsLicensePlateNumber is a dbForm
        Entry_Item Cars.LicensePlateNumber
        Set Size to 13 141
        Set Location to 20 75
        Set peAnchors to anTopLeftRight
        Set Label to "License Plate Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsVIN is a dbForm
        Entry_Item Cars.VIN
        Set Size to 13 231
        Set Location to 35 75
        Set peAnchors to anTopLeftRight
        Set Label to "VIN"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsMotorNumber is a dbForm
        Entry_Item Cars.MotorNumber
        Set Size to 13 231
        Set Location to 50 75
        Set peAnchors to anTopLeftRight
        Set Label to "Motor Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsBrand is a dbForm
        Entry_Item Cars.Brand
        Set Size to 13 126
        Set Location to 65 75
        Set peAnchors to anTopLeftRight
        Set Label to "Brand"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsType is a dbForm
        Entry_Item Cars.Type
        Set Size to 13 186
        Set Location to 80 75
        Set peAnchors to anTopLeftRight
        Set Label to "Type"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsVintage is a dbForm
        Entry_Item Cars.Vintage
        Set Size to 13 96
        Set Location to 95 75
        Set peAnchors to anTopLeftRight
        Set Label to "Vintage"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsLastServiceDate is a dbForm
        Entry_Item Cars.LastServiceDate
        Set Size to 13 66
        Set Location to 110 75
        Set peAnchors to anTopLeftRight
        Set Label to "Last Service Date"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsMileage is a dbForm
        Entry_Item Cars.Mileage
        Set Size to 13 54
        Set Location to 125 75
        Set peAnchors to anTopLeftRight
        Set Label to "Mileage"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCarsIsOccupied is a dbForm
        Entry_Item Cars.IsOccupied
        Set Size to 13 36
        Set Location to 140 75
        Set peAnchors to anTopLeftRight
        Set Label to "Is Occupied"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 


End_Object 
