table 50100 Book
{
    LookupPageId = 50101;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
        }
        field(4; Hardcover; Boolean)
        {
            Caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            Caption = 'Page Count';
        }
        field(6; Publisher; Text[50])
        {
            Caption = 'Publisher';
        }
        field(7; "Publishing Date"; Date)
        {
            Caption = 'Publishing Date';
        }
        field(8; Genre; Text[50])
        {
            Caption = 'Genre';
        }
        field(9; ISBN; Text[30])
        {
            Caption = 'ISBN';
        }
        field(10; Category; Text[50])
        {

        }
        field(11; Shelf; Code[20]) { }
        field(12; "Sales Price"; Decimal) { }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

    trigger OnRename()
    begin
    end;
}