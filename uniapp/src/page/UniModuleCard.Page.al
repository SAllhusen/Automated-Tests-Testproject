page 50004 "Uni Module Card"
{
    Caption = 'Uni Module Card';
    PageType = Card;
    SourceTable = "Uni Module";

    layout
    {
        area(content)
        {
            group(General)
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
                field(Description; Rec.Description)
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