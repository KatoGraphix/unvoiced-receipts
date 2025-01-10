codeunit 50113 "Assert"
{
    procedure AreEqual(Expected: Boolean; Actual: Boolean; Message: Text[100])
    begin
        if Expected <> Actual then
            Error('Assertion Failed: %1. Expected: %2, Actual: %3', Message, Format(Expected), Format(Actual));
    end;

    procedure AreNotEqual(Expected: Boolean; Actual: Boolean; Message: Text[100])
    begin
        if Expected = Actual then
            Error('Assertion Failed: %1. Expected not: %2, but was: %3', Message, Format(Expected), Format(Actual));
    end;

    procedure IsTrue(Condition: Boolean; Message: Text[100])
    begin
        if not Condition then
            Error('Assertion Failed: %1. Condition is false.', Message);
    end;

    procedure IsFalse(Condition: Boolean; Message: Text[100])
    begin
        if Condition then
            Error('Assertion Failed: %1. Condition is true.', Message);
    end;
}
