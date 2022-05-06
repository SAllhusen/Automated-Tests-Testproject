table 50000 "Uni Course Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Number; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Number';
        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
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