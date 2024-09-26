/// <summary>
/// TableExtension CSD Resourceext (ID 50100) extends Record Resource.
/// </summary>
tableextension 50100 "CSD Resourceext" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                rec.TestField("Unit Cost");
            end;
        }

        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal, External';

        }
        field(50102; "CSD MAximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per day"; Decimal)
        {
            Caption = 'Maximum participants';
        }
    }
}