page 50112 "Custom Purchase Order"
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
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the item.';
                }
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item.';
                }
            }
        }
    }
}
