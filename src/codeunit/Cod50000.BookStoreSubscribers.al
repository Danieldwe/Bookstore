codeunit 50000 "BookStoreSubscribers"
{
  [EventSubscriber(ObjectType::Table,Database::Customer,'OnAfterInsertEvent','',true,true)]
  local procedure FavoriteBookStoreHintCustomerOnAfterInsert(var Rec: Record Customer;RunTrigger: Boolean)
  begin
    if Rec."Favorite Book No." = '' then begin 
      Message(StrSubstNo(FavoriteBookMsg,rec.FieldCaption("Favorite Book No.")));   
      ShowMessage('daniel','TEST');
    END;
  end;
  
  local procedure ShowMessage(Name:Text[50])
  Begin
    Message(Name);
  End;

  local procedure ShowMessage(Name:Text[50];Nachname:Text[50])
  begin
    Message(Name,Nachname);
  end;
  
  var
    FavoriteBookMsg:  Label 'Do not forget to enter %1';


}