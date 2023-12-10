/// <summary>
/// Page BonusSetup (ID 50100).
/// </summary>
page 50100 BonusSetup
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BonusSetup;
    DeleteAllowed = false;
    InsertAllowed = false;
    
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus Nos."; rec."Bonus Nos.")
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies number series that will be used for bonus numbers.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        rec.Reset();
        
        if not rec.Get() then begin
            rec.Init();
            rec.Insert();
        end;
    end;
}