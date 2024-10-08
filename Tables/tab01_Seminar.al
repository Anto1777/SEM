table 50101 "CSD Seminar"
{
    Caption = 'Seminar';

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No';

            trigger OnValidate()

            begin
                if "No." <> xRec."No." then begin
                    SeminarSetup.Get();
                    NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';

            trigger OnValidate()

            begin
                if ("Search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                    "Search Name" := Name;
            end;
        }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
        }
        field(40; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum participants';

        }
        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum participants';
        }
        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search name';
        }
        field(70; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;

        }
        field(90; Comment; Boolean)
        {
            Caption = 'Comment';
            Editable = false;

        }
        field(100; "Seminar Price "; Decimal)
        {
            AutoFormatType = 1;
        }
        field(110; "Gen. Prod . Psoting group"; Code[50])
        {
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate()

            begin
                if (xRec."Gen. Prod . Psoting group" <> "Gen. Prod . Psoting group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen. Prod . Psoting group") then
                        Validate("VAT Prod. Psoting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(120; "VAT Prod. Psoting Group"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";

        }
        field(130; "No. Series"; Code[50])
        {
            Editable = false;
            Caption = 'No. Series';
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key1; "Search Name")
        {

        }
    }
    var
        SeminarSetup: Record "CSD Seminar Setup";
        Seminar: Record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin
        if "No." = '' then begin
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.",
            xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify()

    begin
        "Last Date Modified" := Today;

    end;

    trigger OnRename()

    begin
        "Last Date Modified" := Today;
    end;

    procedure AssistEdit(): Boolean;

    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.",
            xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := Seminar;
                exit(true);

            end;
        end;
    end;
}