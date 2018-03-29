codeunit 50101 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo;
        ListDemo;
    end;
    procedure TextDemo();
    var
        myText : Text;
        myTextBuilder : TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append new lines');
        myTextBuilder.Append('... or just characters to the current line');
        myTextBuilder.Replace('Text can also be','replaced');
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper();

        Message(myText);
    end;

    procedure ListDemo()
    var
        customerNames : List of [Text];
    begin
        customerNames.Add('John');

        if customerNames.Contains('John') then
            Message('John is in the list.');

        Message('Name at index 1: ' + customerNames.Get(1));
    end;

    procedure CountCharactersInCustomerName(customerName : Text; var counter : Dictionary of [Char, Integer])
    var
        i : Integer;
        c : Integer;
    begin
        Clear(counter);

        //Count Per Character
        for i := 1 to StrLen(customerName) do begin
            if counter.Get(customerName[i],c) then
                counter.Set(customerName[i], c + 1) //Add 1
            else
                counter.Add(customerName[i], 1); //set to 1
        end;
    end;

    procedure PrintCustomerNames(customerNames : List of [Text])
    var
        name : text;
    begin
        foreach name in customerNames do
            Message(name);
    end;
}