codeunit 50000 "Uni Timetable Mgt."
{
    TableNo = "Uni Timetable";

    procedure FillTimetable(UniCourseHeader: Record "Uni Course Header")
    var
        UniTimetable: Record "Uni Timetable";
        UniCourseLine: Record "Uni Course Line";
        UniCourseLineCount: Integer;
    begin
        UniTimetable.Reset();
        UniTimetable.SetCurrentKey(CourseNumber);
        UniTimetable.SetRange(CourseNumber, UniCourseHeader.Number);
        if not UniTimetable.IsEmpty then
            UniTimetable.DeleteAll();

        UniCourseLine.Reset();
        UniCourseLine.SetCurrentKey(CourseNumber, LineNumber);
        UniCourseLine.SetRange(CourseNumber, UniCourseHeader.Number);
        if not UniCourseLine.IsEmpty then
            UniCourseLineCount := UniCourseLine.Count;

        Randomize();
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 080000T, 090000T);
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 090000T, 100000T);
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 100000T, 110000T);
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 130000T, 140000T);
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 140000T, 150000T);
        FillTimetableForTimeRange(UniTimetable, UniCourseHeader, UniCourseLineCount, 160000T, 170000T);
    end;

    local procedure FillTimetableForTimeRange(var UniTimetable: Record "Uni Timetable"; UniCourseHeader: Record "Uni Course Header"; UniCourseLineCount: Integer; StartTime: Time; EndTime: Time)
    var
        UniCourseLine: Record "Uni Course Line";
        LineNo: Integer;
    begin
        UniTimetable.CourseNumber := UniCourseHeader.Number;
        UniTimetable."Start Time" := StartTime;
        UniTimetable."End Time" := EndTime;
        UniTimetable.Insert();

        LineNo := Random(UniCourseLineCount) * 10000;
        if UniCourseLine.Get(UniCourseHeader.Number, LineNo) then
            UniTimetable.Monday := UniCourseLine.ModuleCode;

        LineNo := Random(UniCourseLineCount) * 10000;
        if UniCourseLine.Get(UniCourseHeader.Number, LineNo) then
            UniTimetable.Tuesday := UniCourseLine.ModuleCode;

        LineNo := Random(UniCourseLineCount) * 10000;
        if UniCourseLine.Get(UniCourseHeader.Number, LineNo) then
            UniTimetable.Wednesday := UniCourseLine.ModuleCode;

        LineNo := Random(UniCourseLineCount) * 10000;
        if UniCourseLine.Get(UniCourseHeader.Number, LineNo) then
            UniTimetable.Thursday := UniCourseLine.ModuleCode;

        LineNo := Random(UniCourseLineCount) * 10000;
        if UniCourseLine.Get(UniCourseHeader.Number, LineNo) then
            UniTimetable.Friday := UniCourseLine.ModuleCode;

        UniTimetable.Modify();
    end;
}