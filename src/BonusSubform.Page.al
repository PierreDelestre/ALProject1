/// <summary>
/// Page 50103.
/// </summary>
page 50103  BonusSubform
{
    Caption = 'Lines';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BonusLine;
    
    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies bonus type';
                }

                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies item number for which bonus is assigned';
                }
                
                field("Bonus Perc."; rec."Bonus Perc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies bonus percent';
                }
            }
        }
    }
    
    
}