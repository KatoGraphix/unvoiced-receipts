table 50110 "Uninvoiced Receipts"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Posting Date"; Date) { DataClassification = ToBeClassified; }
        field(2; "Document Number"; Code[20]) { DataClassification = ToBeClassified; }
        field(3; "Order Number"; Code[20]) { DataClassification = ToBeClassified; }
        field(4; "Vendor Number"; Code[20]) { DataClassification = ToBeClassified; }
        field(5; "Vendor Name"; Text[100]) { DataClassification = ToBeClassified; }
        field(6; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Item","Resource","G/L Account";
        }
        field(7; "Number"; Code[20]) { DataClassification = ToBeClassified; }
        field(8; "Description"; Text[100]) { DataClassification = ToBeClassified; }
        field(9; "Unit of Measure Code"; Code[10]) { DataClassification = ToBeClassified; }
        field(10; "Quantity"; Decimal) { DataClassification = ToBeClassified; }
        field(11; "Invoiced Quantity"; Decimal) { DataClassification = ToBeClassified; }
        field(12; "Received Quantity"; Decimal) { DataClassification = ToBeClassified; }
        field(13; "Non-invoiced Quantity"; Decimal) { DataClassification = ToBeClassified; }
        field(14; "Fully Invoiced"; Boolean) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; "Document Number") { Clustered = true; }
    }
}