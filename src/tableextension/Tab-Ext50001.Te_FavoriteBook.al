tableextension 50001 "Te_FavoriteBook" extends Customer
{
  fields
  {
    field(50000; "Favorite Book No."; code[20])
    {
      DataClassification = ToBeClassified;
      Caption = 'Favorite Book No.';
      TableRelation = T_Book;
    }
  }
}