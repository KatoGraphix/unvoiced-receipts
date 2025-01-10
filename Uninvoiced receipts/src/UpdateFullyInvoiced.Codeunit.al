/// <summary>
/// Codeunit Update Fully Invoiced (ID 50100).
/// </summary>
codeunit 50110 "Update Fully Invoiced"
{
    trigger OnRun()
    begin
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