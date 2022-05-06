table 50006 "Uni Timetable"
{
    Caption = 'Uni Timetable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CourseNumber; Code[20])
        {
            Caption = 'CourseNumber';
            DataClassification = ToBeClassified;
        }
        field(12; Monday; Code[20])
        {
            Caption = 'Monday';
            TableRelation = "Uni Course Header".Number;

            DataClassification = ToBeClassified;
        }
        field(13; Tuesday; Code[20])
        {
            Caption = 'Tuesday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(14; Wednesday; Code[20])
        {
            Caption = 'Wednesday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(15; Thursday; Code[20])
        {
            Caption = 'Thursday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(16; Friday; Code[20])
        {
            Caption = 'Friday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(17; Saturday; Code[20])
        {
            Caption = 'Saturday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(18; Sunday; Code[20])
        {
            Caption = 'Sunday';
            TableRelation = "Uni Course Header".Number;
            DataClassification = ToBeClassified;
        }
        field(10; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(11; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; CourseNumber)
        {
            Clustered = true;
        }
    }
}