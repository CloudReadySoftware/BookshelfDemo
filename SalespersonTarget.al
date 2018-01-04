controladdin DynamicsNAVProgressBar
{
    Scripts = 'DynamicsNAVProgressBar\Script\Script.js';
    StyleSheets = 'DynamicsNAVProgressBar\StyleSheet\StyleSheet.css';
    StartupScript = 'DynamicsNAVProgressBar\Script\Startup.js';

    RequestedHeight = 50;
    RequestedWidth = 500;
    VerticalStretch = false;
    HorizontalStretch = true;

    procedure SetValue(Data : Integer);
    procedure SetColor(Color : Text);
    event ControlAddInReady();
}
page 50110 SalespersonTarget
{
    PageType = Card;
    SourceTable = "Salesperson/Purchaser";
    Caption ='Salesperson Target';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(Code;Code)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Name;Name)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(SalesTargetPerYear;SalesTargetPerYear) 
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        SetProgressBar();
                    end;
                }
                field(TotalSalesLCY;TotalSalesLCY) {
                    ApplicationArea = All;
                }
                usercontrol(ProgressBar;DynamicsNAVProgressBar)
                {
                    ApplicationArea = All;
                    
                    trigger ControlAddInReady()
                    begin
                        SetProgressBar();
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        SetRange("Date Filter",CalcDate('CY-1Y+1D',WorkDate),CalcDate('CY',WorkDate));
    end;

    local procedure SetProgressBar()
    var
        Progress : Integer;
    begin
        CalcFields(TotalSalesLCY);

        if SalesTargetPerYear > 0 then
            Progress := Round(TotalSalesLCY / SalesTargetPerYear * 100,1);

        CurrPage.ProgressBar.SetValue(Progress);

        if Progress < 100 then
            CurrPage.ProgressBar.SetColor('#8B0000')
        else
            CurrPage.ProgressBar.SetColor('#008000');
    end;
}