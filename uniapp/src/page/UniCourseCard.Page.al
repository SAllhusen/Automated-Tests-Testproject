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
    actions
    {
        area(Navigation)
        {
            action("Show Timetable")
            {
                ApplicationArea = All;
                Caption = 'Show Timetable';
                Image = Timesheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ToolTip = 'Show Timetable';

                trigger OnAction()
                var
                    UniTimetable: Record "Uni Timetable";
                begin
                    UniTimetable.SetRange(CourseNumber, Rec.Number);
                    Page.Run(Page::"Uni Timetable List", UniTimetable);
                end;
            }
        }
        area(Processing)
        {
            action("Fill Timetable")
            {
                ApplicationArea = All;
                Caption = 'Fill Timetable';
                Image = LinesFromTimesheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ToolTip = 'Randomly fill Timetable with all modules from a course.';

                trigger OnAction()
                var
                    UniTimetableMgt: Codeunit "Uni Timetable Mgt.";
                begin
                    UniTimetableMgt.FillTimetable(Rec);
                end;
            }
        }
    }
}