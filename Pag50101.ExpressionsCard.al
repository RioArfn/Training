page 50101 "Expressions Card"
{

    Caption = 'Expressions Card';
    PageType = Card;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Input)
            {
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                field(Result; Result)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Image = ExecuteBatch;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
            action(list)
            {
                trigger OnAction()
                begin
                    customerNames.Add('Paul');
                    customerNames2.Add('Linda');
                    customerNames2.Add('Lina');
                    Message('%1', customerNames.Count);
                end;
            }
            action(Loop)
            {
                trigger OnAction()
                var
                    intCount: Integer;
                    total: Integer;
                begin
                    for intCount := 1 to 5 do begin
                        if (total > 8) then
                            break;

                        total := total + 3;
                    end;
                    Message('%1 | %2,', intCount, total);
                end;
            }
        }
    }
    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
        customerNames: List of [Text];
        customerNames2: List of [Text];
        countruesDictionary: Dictionary of [Code[20], list of [Text]];
}
