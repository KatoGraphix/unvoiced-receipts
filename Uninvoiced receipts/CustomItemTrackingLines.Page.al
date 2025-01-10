page 50114 "Custom Item Tracking Lines"
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
                field("Document Number"; Rec."Document Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the document.';
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
                field("Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item.';
                }
            }
        }
    }
}