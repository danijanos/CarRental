// D:\DataFlex Projects\CarRental\AppSrc\ClientEntry.vw
// ClientEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cClientsDataDictionary.dd

ACTIVATE_VIEW Activate_oClientEntry FOR oClientEntry
Object oClientEntry is a dbView
    Set Location to 5 5
    Set Size to 113 333
    Set Label to "Client Entry"
    Set Border_Style to Border_Thick


    Object oClients_DD is a cClientsDataDictionary
    End_Object 

    Set Main_DD To oClients_DD
    Set Server  To oClients_DD



    Object oClientsClient_ID is a dbForm
        Entry_Item Clients.Client_ID
        Set Size to 13 42
        Set Location to 5 78
        Set peAnchors to anTopLeftRight
        Set Label to "Client ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        Set Focus_Mode to NonFocusable
    End_Object 

    Object oClientsFirstName is a dbForm
        Entry_Item Clients.FirstName
        Set Size to 13 250
        Set Location to 20 78
        Set peAnchors to anTopLeftRight
        Set Label to "First Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsLastName is a dbForm
        Entry_Item Clients.LastName
        Set Size to 13 250
        Set Location to 35 78
        Set peAnchors to anTopLeftRight
        Set Label to "Last Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsTaxNumber is a dbForm
        Entry_Item Clients.TaxNumber
        Set Size to 13 126
        Set Location to 50 78
        Set peAnchors to anTopLeftRight
        Set Label to "Tax Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsAddress is a dbForm
        Entry_Item Clients.Address
        Set Size to 13 250
        Set Location to 65 78
        Set peAnchors to anTopLeftRight
        Set Label to "Address"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsPhoneNumber is a dbForm
        Entry_Item Clients.PhoneNumber
        Set Size to 13 96
        Set Location to 80 78
        Set peAnchors to anTopLeftRight
        Set Label to "Phone Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oClientsBankAccountNumber is a dbForm
        Entry_Item Clients.BankAccountNumber
        Set Size to 13 250
        Set Location to 95 78
        Set peAnchors to anTopLeftRight
        Set Label to "Bank Account Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 


End_Object 
