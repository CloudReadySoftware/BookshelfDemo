xmlport 50100 ExportBook
{
    Format = Xml;
    UseRequestPage = false;
    Direction = Export;

    schema
    {
        textelement(Books)
        {
            tableelement(Book; Book)
            {
                fieldattribute(Number; Book."No.") {}
                fieldelement(Title;Book.Title) {}
                fieldelement(Author;Book.Author) {}
                fieldelement(PageCount;Book."Page Count") {}
                fieldelement(HardCover;Book.Hardcover) {}
            }
        }
    }
}