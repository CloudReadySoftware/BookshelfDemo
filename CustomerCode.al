codeunit 50100 CustomerCode
{
    [EventSubscriber(ObjectType::Table,18,'OnAfterInsertEvent','',true,true)]
    procedure CustomerOnAfterInsert(var Rec : Record Customer;RunTrigger : Boolean);
    begin
        message('Whoa, a new customer %1!',Rec."No.");
    end;
}