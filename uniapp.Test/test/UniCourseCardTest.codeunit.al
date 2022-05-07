codeunit 80000 "Uni Course Card Test"
{
    Subtype = Test;

    [Test]
    procedure TestFieldCourseNameIsVisible()
    var
        UniCourseCard: TestPage "Uni Course Card";
    begin
        // [GIVEN] Testpage Uni Course Card
        UniCourseCard.OpenView();
        // [WHEN] Uni Course Card is visible
        // [THEN] Test is successful
        Assert.IsTrue(UniCourseCard.Number.Visible(), 'Field Course Number is not visible.');
    end;

    var
        Assert: Codeunit Assert;
}