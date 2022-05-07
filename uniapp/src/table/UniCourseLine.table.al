table 50001 "Uni Course Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CourseNumber; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Number';
        }
        field(2; LineNumber; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line Number';
        }
        field(3; ModuleCode; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Module Code';
            TableRelation = "Uni Module";
        }
        field(4; ModuleName; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Module Name';
            TableRelation = "Uni Module";
        }
    }

    keys
    {
        key(key1; CourseNumber, LineNumber)
        {
            Clustered = true;
        }
    }
}