pageextension 50102 CustomerListExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(ApplyTemplate)
        {
            action(DotNetDemo)
            {
                ApplicationArea = All;
                Caption='.Net Demo';
                RunObject = codeunit DotNetWrappers;
            }
        }
    }
    
    var
        myInt : Integer;
}