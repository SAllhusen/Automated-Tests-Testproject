codeunit 80002 UniTimetableMgtTest
{
    Subtype = Test;

    [Test]
    procedure TestTimetableIsFilled()
    var
        Timetable: Record "Uni Timetable";
        CourseHeader: Record "Uni Course Header";
        CourseLine: Record "Uni Course Line";
        TimeTableMgt: Codeunit "Uni Timetable Mgt.";
        Module: Record "Uni Module";
    begin
        //[GIVEN] Record TimeTable
        //[GIVEN] New Course with number 1 with a new module
        Timetable.Init();
        if CourseHeader.IsEmpty() then begin
            CourseHeader.Init();
            CourseHeader.Validate(Number, '1');
            CourseHeader.Validate(Name, 'Winf');
            CourseHeader.Insert(true);
        end;

        if Module.IsEmpty() then begin
            Module.Init();
            Module.Validate(Code, '1');
            Module.Validate(Name, 'ERP');
            Module.Insert(true);
        end;

        if CourseLine.IsEmpty() then begin
            CourseLine.Init();
            CourseLine.Validate(LineNumber, 10000);
            CourseLine.Validate(ModuleCode, '1');
            CourseLine.Insert(true);
        end;

        //[WHEN] Procedure FillTimeTable gets called for course number 1
        TimeTableMgt.FillTimetable(CourseHeader);

        //[THEN] TimeTable Record has at least one entry with course number 1
        Timetable.SetRange(CourseNumber, '1');
        Assert.IsFalse(Timetable.IsEmpty(), 'Timetable is empty.');
    end;

    var
        Assert: Codeunit Assert;
}
