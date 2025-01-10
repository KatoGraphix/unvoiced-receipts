/// <summary>
/// Page Uninvoiced Receipts List (ID 50100).
/// </summary>
page 50110 "Uninvoiced Receipts List"
{
    PageType = List;
    SourceTable = "Uninvoiced Receipts";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
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

    actions
{
    area(processing)
    {
        action("Show Document")
        {
            ApplicationArea = All;
            ToolTip = 'Displays the full Purchase Receipt document linked to the Document Number.';
            RunObject = Page "Purchase Receipt";
            Image = Document; // Standard image
        }
        action("Show Order")
        {
            ApplicationArea = All;
            ToolTip = 'Displays the Purchase Order if it exists and is linked to the receipt.';
            RunObject = Page "Custom Purchase Order";
            Image = Order; // Standard image
        }
        action("Dimensions")
        {
            ApplicationArea = All;
            ToolTip = 'Displays the dimensions related to the purchase receipt line.';
            RunObject = Page "Dimensions";
            Image = Dimensions; // Standard image
        }
        action("Item Tracking Lines")
        {
            ApplicationArea = All;
            ToolTip = 'Displays any item tracking details such as lot or serial numbers associated with the received items.';
            RunObject = Page "Custom Item Tracking Lines";
            Image = ItemTracking; // Standard image
        }
    }
}
}