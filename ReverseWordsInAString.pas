program ReverseWordsInAString;
uses sysutils;
var
i:integer; j:integer; reversed:String; s:String;
begin
    s := 'the sky is blue';
    reversed := '';
    j := length(s) + 1;
    i:= 0;
    for i:= length(s) downto 1 do
    begin
        if s[i] = ' ' then
        begin
            j := i;
        end
        else
        begin
            if (i = 1) or (s[i - 1] = ' ') then
            begin
                if not (length(reversed) = 0) then
                begin
                    reversed := reversed + ' ';
                end;
                reversed:= reversed + copy(s, i, j - i);
            end;
        end;
    end;
    writeln(reversed);
end.
