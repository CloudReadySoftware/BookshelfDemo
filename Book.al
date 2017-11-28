table 50100 Book
{

    fields
    {
        field(1;"No.";Code[20])
        {
            CaptionML = ENU='No.';
        }
        field(2;Title;Text[50])
        {
            CaptionML = ENU='Title';
        }
        field(3;Author;Text[50])
        {
            CaptionML = ENU='Author';
        }
        field(4;Hardcover;Boolean)
        {
            CaptionML = ENU='Hardcover';
        }
        field(5;"Page Count";Integer)
        {
            CaptionML = ENU='Page Count';
        }
    }

    keys
    {
        key(PK;"No.")
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