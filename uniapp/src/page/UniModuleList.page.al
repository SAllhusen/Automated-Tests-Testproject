page 50005 "Uni Module List"
{
    ApplicationArea = All;
    Caption = 'Uni Module List';
    PageType = List;
    SourceTable = "Uni Module";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field(Beschreibung; Rec.Beschreibung)
                {
                    ToolTip = 'Specifies the value of the Beschreibung field.';
                    ApplicationArea = All;
                }
                field(ECTS; Rec.ECTS)
                {
                    ToolTip = 'Specifies the value of the ECTS field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
