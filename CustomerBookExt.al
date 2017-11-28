tableextension 50100 CustomerBookExtension extends Customer
{
    fields
    {
        field(50100;"Favorite Book No.";Code[20])
        {
            CaptionML = ENU='Favorite Book No.';
            TableRelation = Book;
        }
    }
}