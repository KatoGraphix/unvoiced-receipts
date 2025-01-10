page 50111 "Purchase Receipt"
{
    PageType = Card;
    SourceTable = "Uninvoiced Receipts";
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the receipt was posted.';
                }
                field("Document Number"; Rec."Document Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the document.';
                }
                field("Order Number"; Rec."Order Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the order.';
                }
                field("Vendor Number"; Rec."Vendor Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the vendor.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the vendor.';
                }
                field("Type"; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the item.';
                }
                field("Number"; Rec.Number)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item.';
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the item.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit of measure code for the item.';
                }
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item.';
                }
                field("Invoiced Quantity"; Rec."Invoiced Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item that has been invoiced.';
                }
                field("Received Quantity"; Rec."Received Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item that has been received.';
                }
                field("Non-invoiced Quantity"; Rec."Non-invoiced Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item that has not been invoiced.';
                }
                field("Fully Invoiced"; Rec."Fully Invoiced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicates whether the item is fully invoiced.';
                }
            }
        }
    }
}