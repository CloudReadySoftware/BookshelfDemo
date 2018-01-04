codeunit 50100 CustomerCode
{
    [EventSubscriber(ObjectType::Table,18,'OnAfterInsertEvent','',true,true)]
    procedure CustomerOnAfterInsert(var Rec : Record Customer;RunTrigger : Boolean)
    begin
        Rec.Name := 'Paul Smith';
        message('Whoa, a new customer %1!',Rec."No.");
    end;

    [EventSubscriber(ObjectType::Table,18,'OnAfterModifyEvent','',true,true)]
    procedure CustomerOnAfterModifyEvent(var Rec : Record Customer; var xRec : Record Customer; RunTrigger : Boolean)
    begin
        Rec.Name := 'James Brown';
    end;
}