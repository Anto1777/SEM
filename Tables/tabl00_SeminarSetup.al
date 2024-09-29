table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';


    fields
    {
        field(1; "Primary Key"; Code[10])
        {


        }
        field(2; "Seminar Nos."; Code[20])
        {

        }
    }

    keys
    {
        key(Pk; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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