/// <summary>
/// Table BonusHeader (ID 50101).
/// </summary>
table 50101 BonusHeader
{
    DataClassification = CustomerContent;
    Caption = 'Bonus';
    
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
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
        
    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    
    
}