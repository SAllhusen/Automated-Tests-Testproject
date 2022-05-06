table 50000 "Uni Courses"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Number; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Number';
        }
    }

    keys
    {
        key(key1; Number)
        {
            Clustered = true;
        }
    }
}