table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';


    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'primary key';

        }
        field(2; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar No series';
            TableRelation = "No. Series";

        }
        field(3; "Seminar Registration  series"; Code[20])
        {
            Caption = 'Seminar Registration Series';
            TableRelation = "No. Series";

        }
        field(4; "Posted Seminar No"; code[20])
        {
            Caption = 'Posted Seminar No';
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(Pk; "Primary Key")
        {
            Clustered = true;
        }
    }



}