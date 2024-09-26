pageextension 50103 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type") { }
            field("CSD MAximum Participants"; Rec."CSD MAximum Participants") { }

        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    begin
        ShowType := (GetSelectionFilter() = '');
    end;

    var
        [InDataSet]
        ShowmaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}