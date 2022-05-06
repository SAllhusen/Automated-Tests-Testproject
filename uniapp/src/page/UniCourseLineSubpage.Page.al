page 50003 "Uni Course Line Subpage"
{
    ApplicationArea = All;
    Caption = 'Course Line Subpage';
    PageType = ListPart;
    SourceTable = "Uni Course Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CourseNumber; Rec.CourseNumber)
                {
                    ToolTip = 'Specifies the value of the CourseNumber field.';
                    ApplicationArea = All;
                }
                field(LineNumber; Rec.LineNumber)
                {
                    ToolTip = 'Specifies the value of the LineNumber field.';
                    ApplicationArea = All;
                }
                field(ModuleCode; Rec.ModuleCode)
                {
                    ToolTip = 'Specifies the value of the ModuleCode field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}