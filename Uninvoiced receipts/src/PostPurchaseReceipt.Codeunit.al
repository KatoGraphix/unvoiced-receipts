codeunit 50101 "Post Purchase Receipt"
{
    trigger OnRun()
    begin
        // Your existing posting logic here
        UpdateFullyInvoicedField();
    end;

    procedure UpdateFullyInvoicedField()
    var
        UninvoicedReceipts: Record "Uninvoiced Receipts";
    begin
        if UninvoicedReceipts.FindSet() then
        repeat
            if UninvoicedReceipts."Non-invoiced Quantity" = 0 then
                UninvoicedReceipts."Fully Invoiced" := true
            else
                UninvoicedReceipts."Fully Invoiced" := false;
            UninvoicedReceipts.Modify();
        until UninvoicedReceipts.Next() = 0;
    end;
}