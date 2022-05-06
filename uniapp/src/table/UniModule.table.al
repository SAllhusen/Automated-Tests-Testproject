table 50004 "Uni Module"
{
    Caption = 'Module';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(4; ECTS; Integer)
        {
            Caption = 'ECTS';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}