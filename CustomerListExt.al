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
                Caption ='.Net Demo';
                RunObject = codeunit DotNetWrappers;
            }
        }
    }
    
    var
        Text001: Label 'Hello There', Comment='Just a text for demo-ing labels', MaxLength=000, Locked=false;
}