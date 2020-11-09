pageextension 50100 Test extends "Customer List"
{
    actions
    {
        addlast(processing)
        {
            action("Test")
            {
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    StartText: Text;
                    FromText: Text;
                    ToText: Text;
                    StartFrom: Integer;
                    EndForm: Integer;
                    PrefixText: Text;
                    SuffixText: Text;
                    LenSuffix: Integer;
                    FinalText: Text;
                    SourceText: text;
                begin
                    StartText := '000-MAIN';
                    FromText := 'MAIN';
                    ToText := 'GRATIS';
                    StartFrom := StrPos(StartText, FromText);
                    SourceText := DelChr(StartText, '=', FromText);
                    FinalText := InsStr(SourceText, ToText, StartFrom);
                    Message('StartText: %1.\StartFrom: %2.\SourceText: %3.\FinalText: %4', StartText, StartFrom, SourceText, FinalText);
                end;
            }
        }
    }
}
