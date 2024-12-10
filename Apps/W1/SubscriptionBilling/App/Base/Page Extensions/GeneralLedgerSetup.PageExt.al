namespace Microsoft.SubscriptionBilling;

using Microsoft.Finance.GeneralLedger.Setup;

pageextension 8053 "General Ledger Setup" extends "General Ledger Setup"
{
    layout
    {
        addlast(Control1900309501)
        {
            field("Dimension Code Cust. Contr."; Rec."Dimension Code Cust. Contr.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Dim. Code for Cust. Contr. field.';
            }
        }
    }
}