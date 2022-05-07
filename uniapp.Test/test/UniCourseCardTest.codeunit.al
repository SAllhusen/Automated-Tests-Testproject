codeunit 80000 "Uni Course Card Test"
{
    Subtype = Test;

    [Test]
    procedure TestFieldCourseNameIsVisible()
    var
        UniCourseCard: TestPage "Uni Course Card";
    begin
        UniCourseCard.OpenView();
        Assert.IsTrue(UniCourseCard.Number.Visible(), 'Field Course Number is not visible.');
    end;

    var
        Assert: Codeunit Assert;
}
