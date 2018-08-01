page 50001 "P_BookList"
{
  PageType = List;
  SourceTable = T_Book;
  CardPageId = P_BookCard;
  Caption = 'Books';
  // :01: Dadurch ist die Page auffindbar 
  ApplicationArea = All;
  UsageCategory = Lists;
  // :01:

  
  layout
  {
    area(content)
    {
      repeater(books)
      {
        field("No."; "No.")
        {
          ApplicationArea = All;
        }
        field(Title; Title)
        {
          ApplicationArea = All;
        }

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
      action(DebuggerDemo)
      {
        Caption = 'Debugger Demo';
        ApplicationArea = all;
        Image = Process;
        RunObject = codeunit DebuggerDemo;
      }
    }
  }
}