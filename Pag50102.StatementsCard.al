page 50102 "Statements Card"
{

    Caption = 'Statements Card';
    PageType = Card;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Input)
            {
                field(difficulty; difficulty)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(output)
            {
                field(suggestion; suggestion)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(level; level)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }

    }
    actions
    {
        area(Processing)
        {

            action(StrMenu)
            {
                trigger OnAction()
                var
                    Days: Text[50];
                    Selection: Integer;
                begin
                    Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
                    Selection := StrMenu(Days, 1, 'Which day is today ?');
                    Message('You selected %1.', Format(Selection));
                end;
            }
        }
    }
    local procedure GetSuggestion()
    var

    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
            else begin
                    suggestion := 'Please select from range 1-10'
                end;
        end;
    end;

    var
        level: Text[30];
        suggestion: Text[80];
        difficulty: integer;
}
