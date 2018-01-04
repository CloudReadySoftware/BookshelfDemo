tableextension 50110 SalespersonExt extends "Salesperson/Purchaser"
{
    fields
    {
        field(50110;SalesTargetPerYear;Decimal)
        {
            CaptionML = ENU='Sales Target per Year';            
        }
        field(50111;TotalSalesLCY;Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Cust. Ledger Entry"."Sales (LCY)" where ("Salesperson Code"=field(Code),"Document Date"=field("Date Filter")));
            Editable = false;
            CaptionML = ENU='Total Sales (LCY)';
        }
    }
}