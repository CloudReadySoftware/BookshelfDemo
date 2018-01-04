page 50100 BookCard
{
    PageType = Card;
    SourceTable = Book;

    layout
    {
        area(content)
        {
            group(General)
            {
                CaptionML = ENU='General';
                field("No.";"No.") {
                    ApplicationArea = All;
                }
                field(Title;Title) {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                CaptionML = ENU='Details';
                field(Author;Author) {
                    ApplicationArea = All;
                }
                field(Hardcover;Hardcover) {
                    ApplicationArea = All;
                }
                field("Page Count";"Page Count") {
                    ApplicationArea = All;
                }
            }
        }
    }
}