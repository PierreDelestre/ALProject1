/// <summary>
/// Table BonusHeader (ID 50101).
/// </summary>
table 50101 BonusHeader
{
    DataClassification = CustomerContent;
    Caption = 'Bonus';
    DrillDownPageId = BonusList;
    LookupPageId = BonusList;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    BonusSetup.Get();
                    NoSeriesMgmt.TestManual(BonusSetup."Bonus Nos.");
                    "No. Series" := '';
                end;
            end;
        }

        field(2; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = Customer;
        }

        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }

        field(4; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            DataClassification = CustomerContent;
        }   
        
        field(5; "Status"; Enum BonusStatus)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }

        field(100; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        
        
    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    
    var
        BonusSetup: Record BonusSetup;
        NoSeriesMgmt: Codeunit NoSeriesManagement;
    
    trigger OnInsert()
    begin
        if "No." = '' then begin
            BonusSetup.Get();
            BonusSetup.TestField("Bonus Nos.");
            NoSeriesMgmt.InitSeries(BonusSetup."Bonus Nos.", xRec."No.", 0D, rec."No.", rec."No. Series");
        end;
    end;
    
}