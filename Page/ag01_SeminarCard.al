page 50101 "CSD Seminar Card"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            group(Genaral)
            {
                field("No."; Rec."No.")
                {
                    AssistEdit = true;

                    trigger OnAssistEdit()

                    begin
                        // if then CurrPage.Update();
                    end;
                }
                field(Name; Rec.Name)
                {

                }
                field("Search Name"; Rec."Search Name") { }
                field("Seminar Duration"; Rec."Seminar Duration") { }
                field("Minimum Participants"; Rec."Minimum Participants") { }
                field("Maximum Participants"; Rec."Maximum Participants") { }
                field(Blocked; Rec.Blocked) { }
                field("Last Date Modified"; Rec."Last Date Modified") { }

            }
            group(Invoicing)
            {
                field("Gen. Prod . Psoting group"; Rec."Gen. Prod . Psoting group") { }
                field("VAT Prod. Psoting Group"; Rec."VAT Prod. Psoting Group") { }
                field("Seminar Price "; Rec."Seminar Price ") { }

            }
        }
        area(FactBoxes)
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
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}