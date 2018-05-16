// C:\DataFlex Projects\CarRental\AppSrc\CardEntry.vw
// CardEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cClientsDataDictionary.dd
Use cCarsDataDictionary.dd
Use cRentalCardsDataDictionary.dd
Use cRentedCarsDataDictionary.dd

ACTIVATE_VIEW Activate_oCardEntry FOR oCardEntry
Object oCardEntry is a dbView
    Set Location to 70 18
    Set Size to 203 623
    Set Label To "CardEntry"
    Set Border_Style to Border_Thick


    Object oClients_DD is a cClientsDataDictionary
    End_Object 

    Object oCars_DD is a cCarsDataDictionary
    End_Object 

    Object oRentalCards_DD is a cRentalCardsDataDictionary
        Set DDO_Server To oClients_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oRentedCars_DD is a cRentedCarsDataDictionary
        Set DDO_Server To oCars_DD
        Set DDO_Server To oRentalCards_DD
        Set Constrain_File To RentalCards.File_Number
    End_Object 

    Set Main_DD To oRentalCards_DD
    Set Server  To oRentalCards_DD



    Object oRentalCardsCard_ID is a dbForm
        Entry_Item RentalCards.Card_ID
        Set Size to 13 55
        Set Location to 5 68
        Set peAnchors to anTopLeftRight
        Set Label to "Card ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        Set Focus_Mode to NonFocusable
    End_Object 

    Object oClientsClient_ID is a dbForm
        Entry_Item Clients.Client_ID
        Set Size to 13 55
        Set Location to 20 68
        Set peAnchors to anTopLeftRight
        Set Label to "Client ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsFirstName is a dbForm
        Entry_Item Clients.FirstName
        Set Size to 13 263
        Set Location to 35 68
        Set peAnchors to anTopLeftRight
        Set Label to "First Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsLastName is a dbForm
        Entry_Item Clients.LastName
        Set Size to 13 263
        Set Location to 50 68
        Set peAnchors to anTopLeftRight
        Set Label to "Last Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRentalCardsRecordDate is a dbForm
        Entry_Item RentalCards.RecordDate
        Set Size to 13 79
        Set Location to 65 68
        Set peAnchors to anTopLeftRight
        Set Label to "Record Date"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oRentalCardsResponsiblePerson is a dbForm
        Entry_Item RentalCards.ResponsiblePerson
        Set Size to 13 263
        Set Location to 80 68
        Set peAnchors to anTopLeftRight
        Set Label to "Responsible Person"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 95 613
        Set Location to 103 5
        Set Server to oRentedCars_DD
        Set Ordering to 3
        Set peAnchors to anAll
        Set psLayoutSection to "oCardEntry_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oRentedCars_RentedCars_ID is a cDbCJGridColumn
            Entry_Item RentedCars.RentedCars_ID
            Set piWidth to 76
            Set psCaption to "Rented Cars ID"
            Set pbFocusable to False
        End_Object 

        Object oRentalCards_Card_ID is a cDbCJGridColumn
            Entry_Item RentalCards.Card_ID
            Set piWidth to 79
            Set psCaption to "Rental Cards ID"
        End_Object 

        Object oCars_Car_ID is a cDbCJGridColumn
            Entry_Item Cars.Car_ID
            Set piWidth to 48
            Set psCaption to "Car ID"
        End_Object 

        Object oRentedCars_StartOfRentDate is a cDbCJGridColumn
            Entry_Item RentedCars.StartOfRentDate
            Set piWidth to 86
            Set psCaption to "Start Of Rent Date"
        End_Object 

        Object oRentedCars_EndOfRentDate is a cDbCJGridColumn
            Entry_Item RentedCars.EndOfRentDate
            Set piWidth to 82
            Set psCaption to "End Of Rent Date"
        End_Object 

        Object oRentedCars_MileageBefore is a cDbCJGridColumn
            Entry_Item RentedCars.MileageBefore
            Set piWidth to 79
            Set psCaption to "Mileage Before"
        End_Object 

        Object oRentedCars_MileageAfter is a cDbCJGridColumn
            Entry_Item RentedCars.MileageAfter
            Set piWidth to 71
            Set psCaption to "Mileage After"
        End_Object 

        Object oRentedCars_StatusBefore is a cDbCJGridColumn
            Entry_Item RentedCars.StatusBefore
            Set piWidth to 202
            Set psCaption to "Status Before"
        End_Object 

        Object oRentedCars_StatusAfter is a cDbCJGridColumn
            Entry_Item RentedCars.StatusAfter
            Set piWidth to 202
            Set psCaption to "Status After"
        End_Object 

        Object oRentedCars_RefuelingVolume is a cDbCJGridColumn
            Entry_Item RentedCars.RefuelingVolume
            Set piWidth to 89
            Set psCaption to "Refueling Volume"
        End_Object 

        Object oRentedCars_UnitPrice is a cDbCJGridColumn
            Entry_Item RentedCars.UnitPrice
            Set piWidth to 58
            Set psCaption to "Unit Price"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
