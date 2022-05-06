page 50001 "Uni Course Card"
{
    Caption = 'Course Card';
    PageType = Card;
    SourceTable = "Uni Course Header";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
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
            part(CourseLines; "Uni Course Line Subpage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = CourseNumber = field(Number);
                UpdatePropagation = Both;
            }
        }
    }
}