table 50000 "T_Book"
{
  DataClassification = ToBeClassified;
  LookupPageId = P_BookList;
  
  
  
  fields
  {
    field(1;"No."; Code[20])
    {
      DataClassification = ToBeClassified;
      Caption = 'No.';
      NotBlank = true;
    }

    field(10; Title; Text[50])
    {
      DataClassification = ToBeClassified;
      Caption = 'Title';
    }

    field(20; Author; Text[50])
    {
      DataClassification = ToBeClassified;
      Caption = 'Author';
    }

    field(30; Hardcover; Boolean)
    {
      DataClassification = ToBeClassified;
      Caption = 'Hardcover';
    }
    field(40; "Page Count"; Integer)
    {
      DataClassification = ToBeClassified;
      Caption = 'Page Count';
    }
    field(50; Picture; MediaSet)
    {
      DataClassification = ToBeClassified;
      Caption = 'Picture';
    }
  }
  
  keys
  {
    key(PK; "No.")
    {
      Clustered = true;
    }
  }
  fieldgroups
  {
    fieldgroup(DropDown;"No.",Title,Author)
    {
    }
  }
}