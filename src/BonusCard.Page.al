/// <summary>
/// Page BonusCard (ID 50102).
/// </summary>
page 50102 "BonusCard"
{
    Caption = 'Bonus Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BonusHeader;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Bonus number';
                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies bonus customer number';
                }

                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies starting date';
                }
                
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies ending date';
                }
                
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus status';
                }
            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                ToolTip = 'Opens customer card';
            }
        }
    }
}