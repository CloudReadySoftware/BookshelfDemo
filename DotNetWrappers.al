codeunit 50101 DotNetWrappers
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure MyProcedure()
    var
        counter: Dictionary of [Char, Integer];
        myKey: char;
        myValue: Integer;
        ListOfCustomerNames: list of [Text];
    begin
        TextDemo;

        //ListDemo;

        /*         CountCharactersInCustomerName('Trimit'.tolower(), counter);
                foreach myKey in counter.Keys() do begin
                    counter.get(mykey, myValue);
                    message('%1: %2', myKey, myValue);
                end; */

        /*         ListOfCustomerNames.Add('waldo');
                ListOfCustomerNames.Add('Isabelle');
                ListOfCustomerNames.add('Lex');
                ListOfCustomerNames.add('Mats');
                ListOfCustomerNames.add('Ben');
                PrintCustomerNames(ListOfCustomerNames) */

    end;

    procedure TextDemo();
    var
        myText: Text;
        myTextBuilder: TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append new lines');
        myTextBuilder.Append('... or just characters to the current line');
        myTextBuilder.Replace('Text can also be', 'replaced');
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper().ToLower().ToUpper();

        Message(myText);
    end;

    procedure ListDemo()
    var
        customerNames: List of [Text];
    begin
        customerNames.add('Isabelle');
        customerNames.add('Lex');
        customerNames.Add('John');
        customerNames.add('Mats');

        if customerNames.Contains('John') then
            Message('John is in the list.');

        Message('Name at index 1: ' + customerNames.Get(1));
    end;

    procedure CountCharactersInCustomerName(customerName: Text; var counter: Dictionary of [Char, Integer])
    var
        i: Integer;
        c: Integer;
    begin
        Clear(counter);

        //Count Per Character
        for i := 1 to StrLen(customerName) do begin
            if counter.Get(customerName[i], c) then
                counter.Set(customerName[i], c + 1) //Add 1
            else
                counter.Add(customerName[i], 1); //set to 1
        end;
    end;

    procedure PrintCustomerNames(customerNames: List of [Text])
    var
        name: text;
    begin
        foreach name in customerNames do
            Message(name);
    end;
}