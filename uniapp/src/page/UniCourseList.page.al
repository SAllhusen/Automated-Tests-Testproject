page 50002 "Uni Course List"
{
    ApplicationArea = All;
    Caption = 'Cource List';
    PageType = List;
    SourceTable = "Uni Course Header";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field(Number; Rec.Number)
                {
                    ToolTip = 'Specifies the value of the Number field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}