/// <summary>
/// TableExtension CustomerExt (ID 50100) extends Record Customer.
/// </summary>
tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; Bonuses; Integer)
        {
            Caption = 'Bonuses';
            FieldClass = FlowField;
            CalcFormula = count(BonusHeader where ("Customer No." = field("No.")));
            Editable = false;
        }
        
    }

    var
        BonusExistsErr: Label 'You cannot delete Customer %1 because there is at least one Bonus assigned.';

    trigger OnBeforeDelete()
    var
        BonusHeader: Record BonusHeader;
    begin
        BonusHeader.SetRange("Customer No.","No.");
        if not BonusHeader.IsEmpty() then
            Error(BonusExistsErr, "No.");
    end;
    
}