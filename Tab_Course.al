table 50100 "Course List"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Course Id"; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(2; "Course Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Course Id")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}