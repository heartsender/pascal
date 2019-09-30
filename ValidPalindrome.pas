program ValidPalindrome;
uses sysutils, StrUtils, Character;
var 
i: Integer; j: Integer; s: String;
begin
    i := 1;
    s := 'A man, a plan, a canal: Panama';
    j := length(s);
    writeln('J ' + IntToStr(j) + ' => ' + s[0]);
    while i < j do
    begin
        while (i < j) and (not TCharacter.IsLetterOrDigit(s[i])) do
        begin
            i := i + 1;
        end;
        while (i < j) and (not TCharacter.IsLetterOrDigit(s[j])) do
        begin
            j:= j -1;
        end;
        if not (lowercase(s[i]) = lowercase(s[j])) then
        begin
            writeln('False');
            Exit;
        end;
        i := i + 1; j:= j -1;
    end;
    writeln('True');
end.
