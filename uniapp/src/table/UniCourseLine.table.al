table 50001 "Uni Course Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CourseNumber; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'CourseNumber';
        }
        field(2; LineNumber; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'LineNumber';
        }
        field(3; ModuleCode; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'ModuleCode';
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