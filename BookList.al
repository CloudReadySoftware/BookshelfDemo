page 50101 BookList
{
    PageType = List;
    CardPageId = 50100;
    SourceTable = Book;
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater("Repeater")
            {
                field("No.";"No.") {
                    ApplicationArea = All;
                }
                field(Title;Title) {
                    ApplicationArea = All;
                }
                field(Author;Author) {
                    ApplicationArea = All;
                }
            }
        }
    }
}