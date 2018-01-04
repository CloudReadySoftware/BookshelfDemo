pageextension 50110 SalespersonCardExt extends "Salesperson/Purchaser Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("&Salesperson")
        {
            action(SalespersonTarget)
            {
                Caption ='Sales Target';
                RunObject = page SalespersonTarget;
                RunPageOnRec = true;
                Image = Sales;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
            }
        }
    }
}