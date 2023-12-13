pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field(Bonuses; Rec.Bonuses)
            {
                ApplicationArea = All;
                ToolTip = 'Shows number of assigned bonuses to customer.';
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            action(BonusList)
            {
                ToolTip = 'List of Bonuses';
                Caption = 'Bonuses';
                ApplicationArea = All;
                Image = Discount;
                RunObject = page BonusList;
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }
}