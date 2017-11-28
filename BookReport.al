report 50100 BookReport
{
    DefaultLayout = Word;
    WordLayout = 'BookReport.docx';

    dataset
    {
        dataitem(Books; Book)
        {
            column(Number; "No.")
            {
                IncludeCaption = true;
            }
            column(Title;Title)
            {
                IncludeCaption = true;
            }
            column(Author;Author)
            {
                IncludeCaption = true;
            }            
            column(PageCount;"Page Count")
            {
                IncludeCaption = true;
            }
        }
    }
}