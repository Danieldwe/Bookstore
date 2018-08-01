codeunit 50001 "DebuggerDemo"
{
  trigger OnRun()
  var
    Counter:Integer;
  begin
    Counter := 0;
    repeat
      Counter +=1;
      ShowDebugger();
    Until Counter = 4;
  end;
  local procedure ShowDebugger()
  var
    i: Integer;
  begin
    i := 1;
    i += 1;
  end;
}