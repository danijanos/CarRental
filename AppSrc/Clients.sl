// Clients.sl
// Clients Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cClientsDataDictionary.dd

CD_Popup_Object Clients_sl is a dbModalPanel
    Set Location to 17 15
    Set Size to 134 610
    Set Label to "Clients List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oClients_DD is a cClientsDataDictionary
    End_Object 

    Set Main_DD To oClients_DD
    Set Server  To oClients_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Clients_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oClients_Client_ID is a cDbCJGridColumn
            Entry_Item Clients.Client_ID
            Set piWidth to 63
            Set psCaption to "Client ID"
        End_Object 

        Object oClients_FirstName is a cDbCJGridColumn
            Entry_Item Clients.FirstName
            Set piWidth to 262
            Set psCaption to "First Name"
        End_Object 

        Object oClients_LastName is a cDbCJGridColumn
            Entry_Item Clients.LastName
            Set piWidth to 262
            Set psCaption to "Last Name"
        End_Object 

        Object oClients_TaxNumber is a cDbCJGridColumn
            Entry_Item Clients.TaxNumber
            Set piWidth to 210
            Set psCaption to "Tax Number"
        End_Object 

        Object oClients_Address is a cDbCJGridColumn
            Entry_Item Clients.Address
            Set piWidth to 262
            Set psCaption to "Address"
        End_Object 

        Object oClients_PhoneNumber is a cDbCJGridColumn
            Entry_Item Clients.PhoneNumber
            Set piWidth to 157
            Set psCaption to "Phone Number"
        End_Object 

        Object oClients_BankAccountNumber is a cDbCJGridColumn
            Entry_Item Clients.BankAccountNumber
            Set piWidth to 262
            Set psCaption to "Bank Account Number"
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


CD_End_Object // Clients_sl
