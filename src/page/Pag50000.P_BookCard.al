page 50000 "P_BookCard"
{
  PageType = Card;
  SourceTable = T_Book;
  
  layout
  {
    area(content)
    {
      group(General)
      {
        Caption = 'General';
        field("No."; "No.")
        {
          ApplicationArea = All;
        }
        field(Title; Title)
        {
          ApplicationArea = All;
        }
      }
      group(Details)
      {
        Caption = 'Details';
        field(Author; Author)
        {
          ApplicationArea = All;
        }
        field(Hardcover; Hardcover)
        {
          ApplicationArea = All;
        }
        field("Page Count"; "Page Count")
        {
          ApplicationArea = All;
        }

      }
    }
    area(FactBoxes)
    {
      part(Picture;"Book Picture")
      {
        ApplicationArea = all;
        Caption = 'Book Picture';
        SubPageLink = "No." = field("No.");
      }
    }
  }

  actions
  {
    area(Reporting)
    {
      action(BookList)
      {
        Caption = 'Book List';
        ApplicationArea = All;
        RunObject = report BookList;
        Image = Report;
        Promoted = true;
        PromotedIsBig = true;
        PromotedCategory = Report;
      }
    }
    area(Processing)
    {
      action(DownloadPicture)
      {
        Caption = 'Download Picture';
        ApplicationArea = all;
        Image = Picture;
        Promoted = true;
        PromotedIsBig = true;
        PromotedCategory = Process;

        trigger OnAction()
          var
            DownlaodMgt:Codeunit HttpDownloadMgt;
            TempBlob:Record TempBlob temporary;
            InStr: InStream;
          begin
            DownlaodMgt.DownloadPicture('http://vjeko.com/demo/bicycle.jpg',TempBlob);
            TempBlob.Blob.CreateInStream(InStr);
            rec.Picture.ImportStream(InStr,'Default image');
            CurrPage.Update(true);
          end;
      }
    }
  }
}