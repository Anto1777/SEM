pageextension 50101 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type") { }
            field("CSD Quantity Per day"; Rec."CSD Quantity Per day") { }

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';

            }
        }

    }

    trigger OnAfterGetRecord()

    begin
        ShowMaxField := (Rec.Type = Rec.Type::Machine);

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}