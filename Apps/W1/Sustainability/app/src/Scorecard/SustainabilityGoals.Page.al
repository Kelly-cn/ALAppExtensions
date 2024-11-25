namespace Microsoft.Sustainability.Scorecard;

using System.Security.User;

page 6234 "Sustainability Goals"
{
    PageType = List;
    Caption = 'Sustainability Goals';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sustainability Goal";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Scorecard No."; Rec."Scorecard No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Scorecard No.';
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Scorecard No. field.';
                    Editable = CanEditScorecard;
                    Enabled = CanEditScorecard;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No.';
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Name';
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Owner"; Rec."Owner")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Owner';
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Owner field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Start Date';
                    ToolTip = 'Specifies the value of the Start Date field.';

                    trigger OnValidate()
                    begin
                        FormatLine();
                        CurrPage.Update(true);
                    end;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'End Date';
                    ToolTip = 'Specifies the value of the End Date field.';

                    trigger OnValidate()
                    begin
                        FormatLine();
                        CurrPage.Update(true);
                    end;
                }
                field("Baseline for CO2"; Rec."Baseline for CO2")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Baseline for CO2';
                    ToolTip = 'Specifies the value of the Baseline for CO2. This value is automatically calculated based on Baseline Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntriesForBaseline(Rec);
                    end;
                }
                field("Baseline for CH4"; Rec."Baseline for CH4")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Baseline for CH4';
                    ToolTip = 'Specifies the value of the Baseline for CH4. This value is automatically calculated based on Baseline Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntriesForBaseline(Rec);
                    end;
                }
                field("Baseline for N2O"; Rec."Baseline for N2O")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Baseline for N2O';
                    ToolTip = 'Specifies the value of the Baseline for N2O. This value is automatically calculated based on Baseline Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntriesForBaseline(Rec);
                    end;
                }
                field("Baseline for Water Intensity"; Rec."Baseline for Water Intensity")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Baseline for Water Intensity field.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntriesForBaseline(Rec);
                    end;
                }
                field("Baseline for Waste Intensity"; Rec."Baseline for Waste Intensity")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Baseline for Waste Intensity field.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntriesForBaseline(Rec);
                    end;
                }
                field("Current Value for CO2"; Rec."Current Value for CO2")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Current Value for CO2';
                    ToolTip = 'Specifies the CO2 emission amount of the for the current period. This value is automatically calculated based on Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntries(Rec);
                    end;
                }
                field("Current Value for CH4"; Rec."Current Value for CH4")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Current Value for CH4';
                    ToolTip = 'Specifies the CH4 emission amount of the for the current period. This value is automatically calculated based on Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntries(Rec);
                    end;
                }
                field("Current Value for N2O"; Rec."Current Value for N2O")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Current Value for N2O';
                    ToolTip = 'Specifies the N2O emission amount of the for the current period. This value is automatically calculated based on Start and End Date and Country/Region Code and Responsibility Center. If the Country/Region Code and Responsibility Center fields are empty, field will show all entries.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntries(Rec);
                    end;
                }
                field("Current Value for Water Int."; Rec."Current Value for Water Int.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Current Value for Water Intensity field.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntries(Rec);
                    end;
                }
                field("Current Value for Waste Int."; Rec."Current Value for Waste Int.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Current Value for Waste Intensity field.';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        Rec.DrillDownSustLedgerEntries(Rec);
                    end;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Unit of Measure';
                    ToolTip = 'Specifies the value of the Unit of Measure field.';
                }
                field("Target Value for CO2"; Rec."Target Value for CO2")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Target Value for CO2';
                    ToolTip = 'Specifies the value of the Target Value for CO2 field.';
                }
                field("Target Value for CH4"; Rec."Target Value for CH4")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Target Value for CH4';
                    ToolTip = 'Specifies the value of the Target Value for CH4 field.';
                }
                field("Target Value for N2O"; Rec."Target Value for N2O")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Target Value for N2O';
                    ToolTip = 'Specifies the value of the Target Value for N2O field.';
                }
                field("Target Value for Water Int."; Rec."Target Value for Water Int.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Target Value for Water Intensity field.';

                    trigger OnValidate()
                    begin
                        FormatLine();
                        CurrPage.Update(true);
                    end;
                }
                field("Target Value for Waste Int."; Rec."Target Value for Waste Int.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Target Value for Waste Intensity field.';

                    trigger OnValidate()
                    begin
                        FormatLine();
                        CurrPage.Update(true);
                    end;
                }
                field("Main Goal"; Rec."Main Goal")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Main Goal';
                    ToolTip = 'Specifies that this sustainability goal is the main goal for the company. You can designate only one goal as the primary goal for the entire company. KPIs related to this primary goal are displayed in the Sustainability Manager role center.';

                    trigger OnValidate()
                    begin
                        FormatLine();
                        CurrPage.Update(true);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Show My Goals")
            {
                ApplicationArea = Basic, Suite;
                Image = FilterLines;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Show My Goals';
                ToolTip = 'Executes the Show My Goals action.';

                trigger OnAction()
                begin
                    ApplyOwnerFilter(Rec);
                    CurrPage.Update(false);
                end;
            }
            action("Show All Goals")
            {
                ApplicationArea = Basic, Suite;
                Image = ShowList;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Show All Goals';
                ToolTip = 'Executes the Show All Goals action.';

                trigger OnAction()
                begin
                    RemoveOwnerFilter(Rec);
                    CurrPage.Update(false);
                end;
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        UserMgt: Codeunit "User Setup Management";
    begin
        Rec."Responsibility Center" := UserMgt.GetSalesFilter();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        FormatLine();
    end;

    trigger OnAfterGetRecord()
    begin
        FormatLine();
    end;

    procedure SetCalledFromScorecard(NewCalledFromScorecard: Boolean)
    begin
        CalledFromScorecard := NewCalledFromScorecard;
    end;

    local procedure FormatLine()
    var
        DateNotification: Notification;
    begin
        CanEditScorecard := not CalledFromScorecard;

        if Rec.GetFilter("Current Period Filter") <> '' then begin
            Rec.SetFilter("Current Period Filter", '');
            DateNotification.Id := CreateGuid();
            DateNotification.Message := StrSubstNo(CannotApplyCurrentPeriodFilterFromPageMsg, Rec.FieldCaption("Start Date"), Rec.FieldCaption("End Date"));
            DateNotification.Scope := NotificationScope::LocalScope;
            DateNotification.Send();
        end;

        Rec.UpdateCurrentEmissionValues(Rec);
    end;

    var
        CalledFromScorecard: Boolean;
        CanEditScorecard: Boolean;
        CannotApplyCurrentPeriodFilterFromPageMsg: Label 'You cannot apply current date filter from the page as the field calculation happens based on %1 and %2 for each Goal line(s).', Comment = '%1 - Start Date caption, %2 - End Date Caption';
}