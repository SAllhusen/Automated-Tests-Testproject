page 50002 "Uni Course List"
{
    ApplicationArea = All;
    Caption = 'Course List';
    PageType = List;
    SourceTable = "Uni Course Header";
    UsageCategory = Lists;
    CardPageId = "Uni Course Card";

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