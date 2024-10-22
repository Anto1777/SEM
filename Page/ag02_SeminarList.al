page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 50101;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {

                }
                field(Name; Rec.Name) { }
                field("Seminar Duration"; Rec."Seminar Duration") { }
                field("Seminar Price "; Rec."Seminar Price ") { }
                field("Minimum Participants"; Rec."Minimum Participants") { }
                field("Maximum Participants"; Rec."Maximum Participants") { }

            }
        }
        area(Factboxes)
        {

            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar), 
                    // "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }
}