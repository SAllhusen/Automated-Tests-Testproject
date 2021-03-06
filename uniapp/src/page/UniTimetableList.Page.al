page 50007 "Uni Timetable List"
{
    ApplicationArea = All;
    Caption = 'Uni Timetable List';
    PageType = List;
    SourceTable = "Uni Timetable";
    UsageCategory = Lists;
    CardPageId = "Uni Timetable Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CourseNumber; Rec.CourseNumber)
                {
                    ToolTip = 'Specifies the value of the UniCourseNumber field.';
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Specifies the value of the Start Time field.';
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'Specifies the value of the End Time field.';
                    ApplicationArea = All;
                }
                field(Monday; Rec.Monday)
                {
                    ToolTip = 'Specifies the value of the Monday field.';
                    ApplicationArea = All;
                }
                field(Tuesday; Rec.Tuesday)
                {
                    ToolTip = 'Specifies the value of the Tuesday field.';
                    ApplicationArea = All;
                }
                field(Wednesday; Rec.Wednesday)
                {
                    ToolTip = 'Specifies the value of the Wednesday field.';
                    ApplicationArea = All;
                }
                field(Thursday; Rec.Thursday)
                {
                    ToolTip = 'Specifies the value of the Thursday field.';
                    ApplicationArea = All;
                }
                field(Friday; Rec.Friday)
                {
                    ToolTip = 'Specifies the value of the Friday field.';
                    ApplicationArea = All;
                }
                field(Saturday; Rec.Saturday)
                {
                    ToolTip = 'Specifies the value of the Saturday field.';
                    ApplicationArea = All;
                }
                field(Sunday; Rec.Sunday)
                {
                    ToolTip = 'Specifies the value of the Sunday field.';
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }
    }
}