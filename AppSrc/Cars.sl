// Cars.sl
// Cars Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cCarsDataDictionary.dd

CD_Popup_Object Cars_sl is a dbModalPanel
    Set Location to 31 43
    Set Size to 134 610
    Set Label To "Cars Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oCars_DD is a cCarsDataDictionary
    End_Object 

    Set Main_DD To oCars_DD
    Set Server  To oCars_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Cars_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oCars_Car_ID is a cDbCJGridColumn
            Entry_Item Cars.Car_ID
            Set piWidth to 63
            Set psCaption to "Car ID"
        End_Object 

        Object oCars_LicensePlateNumber is a cDbCJGridColumn
            Entry_Item Cars.LicensePlateNumber
            Set piWidth to 236
            Set psCaption to "License Plate Number"
        End_Object 

        Object oCars_VIN is a cDbCJGridColumn
            Entry_Item Cars.VIN
            Set piWidth to 262
            Set psCaption to "VIN"
        End_Object 

        Object oCars_MotorNumber is a cDbCJGridColumn
            Entry_Item Cars.MotorNumber
            Set piWidth to 262
            Set psCaption to "Motor Number"
        End_Object 

        Object oCars_Brand is a cDbCJGridColumn
            Entry_Item Cars.Brand
            Set piWidth to 210
            Set psCaption to "Brand"
        End_Object 

        Object oCars_Type is a cDbCJGridColumn
            Entry_Item Cars.Type
            Set piWidth to 262
            Set psCaption to "Type"
        End_Object 

        Object oCars_Vintage is a cDbCJGridColumn
            Entry_Item Cars.Vintage
            Set piWidth to 157
            Set psCaption to "Vintage"
        End_Object 

        Object oCars_LastServiceDate is a cDbCJGridColumn
            Entry_Item Cars.LastServiceDate
            Set piWidth to 105
            Set psCaption to "Last Service Date"
        End_Object 

        Object oCars_Mileage is a cDbCJGridColumn
            Entry_Item Cars.Mileage
            Set piWidth to 84
            Set psCaption to "Mileage"
        End_Object 

        Object oCars_IsOccupied is a cDbCJGridColumn
            Entry_Item Cars.IsOccupied
            Set piWidth to 84
            Set psCaption to "Is Occupied?"
            Set pbCheckbox to True
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 447
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 501
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 555
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Cars_sl
