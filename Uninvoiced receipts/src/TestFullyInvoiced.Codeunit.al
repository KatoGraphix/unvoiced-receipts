codeunit 50112 "Test Fully Invoiced"
{
    Subtype = Test;

    TestPermissions = Disabled;

    [Test]
    procedure TestFullyInvoicedField()
    var
        UninvoicedReceipts: Record "Uninvoiced Receipts";
        PostPurchaseReceipt: Codeunit "Post Purchase Receipt";
        Assert: Codeunit "Assert";
    begin
        // Arrange: Initialize and insert a test record
        UninvoicedReceipts.Init();
        UninvoicedReceipts."Document Number" := 'TESTDOC';
        UninvoicedReceipts."Non-invoiced Quantity" := 0; // Simulate a condition for being fully invoiced
        UninvoicedReceipts.Insert();

        // Act: Run the purchase receipt posting process
        PostPurchaseReceipt.Run();

        // Assert: Verify the "Fully Invoiced" field is updated as expected
        if UninvoicedReceipts.Get('TESTDOC') then
            Assert.AreEqual(
                true,
                UninvoicedReceipts."Fully Invoiced",
                'The Fully Invoiced field should be true when Non-invoiced Quantity is 0.'
            )
        else
            Error('Test record not found. Ensure the setup is correct.');
    end;
}
