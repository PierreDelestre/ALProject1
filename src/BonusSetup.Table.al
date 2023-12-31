/// <summary>
/// Table BonusSetup (ID 50100).
/// </summary>
table 50100 BonusSetup
{
    DataClassification = CustomerContent;
    Caption = 'Bonus Setup';
    
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
        }

        field(2; "Bonus Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Bonus Nos.';
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}