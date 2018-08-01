report 50000 "BookList"
{
  Caption = 'Book List';
  ApplicationArea = All;
  UsageCategory = ReportsAndAnalysis;
  DefaultLayout = RDLC;
  RDLCLayout = 'src\report\Report50000.BookList.rdl';


  dataset
  {
    
    dataitem(T_Book; T_Book)
    {
      RequestFilterFields = "No.", Author;
      column(No_Book;"No." )
      {
        IncludeCaption = true;
      }

      column(Title_Book;Title )
      {
        IncludeCaption = true;
      }

      column(Author;Author )
      {
        IncludeCaption = true;
      }

      column(Hardcover_Book;Hardcover)
      {
        IncludeCaption=true;
      }

      column(PageCount_Book;"Page Count")
      {
        IncludeCaption = true;
      }
      trigger
      OnAfterGetRecord()
      begin
        i+=1;
        Message('TEST %1',i);
      end;
    }
  }
  labels
  {
    Title_Caption = 'Book - List';
  }
  var 
    i:Integer;
}
// Strg + Umschalt + B umd ie Rdlc Datei zu erstellen