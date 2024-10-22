table 50104 "CSD Seminar Comment Line"
{
    Caption = 'Seminar Comment line';

    fields
    {
        field(10; "Table Name "; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption = 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }
        field(20; "Documet Line No"; Integer)
        {
            Caption = 'Documet Line No';
        }
        field(30; "No"; Code[20])
        {
            Caption = 'No';
            TableRelation = if ("Table Name " = const(Seminar)) "CSD Seminar";
        }
        field(40; "Line No"; Integer)
        {
            Caption = 'Line No';
        }
        field(50; Date; Date)
        {
            Caption = 'Date';
        }
        field(60; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(70; Comment; Text[80])
        {
            Caption = 'Comment';
        }


    }

    keys
    {
        key(PK; "Table Name ", "Documet Line No", "Line No")
        {
            Clustered = true;
        }
    }

}