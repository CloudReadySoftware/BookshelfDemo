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
                field("No.";"No.") {}
                field(Title;Title) {}
            }
            group(Details)
            {
                CaptionML = ENU='Details';
                field(Author;Author) {}
                field(Hardcover;Hardcover) {}
                field("Page Count";"Page Count") {}
            }
        }
    }
}