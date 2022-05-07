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
        field(10; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(20; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        field(30; Monday; Code[20])
        {
            Caption = 'Monday';
            TableRelation = "Uni Module".Code;

            DataClassification = ToBeClassified;
        }
        field(40; Tuesday; Code[20])
        {
            Caption = 'Tuesday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
        field(50; Wednesday; Code[20])
        {
            Caption = 'Wednesday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
        field(60; Thursday; Code[20])
        {
            Caption = 'Thursday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
        field(70; Friday; Code[20])
        {
            Caption = 'Friday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
        field(80; Saturday; Code[20])
        {
            Caption = 'Saturday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
        field(90; Sunday; Code[20])
        {
            Caption = 'Sunday';
            TableRelation = "Uni Module".Code;
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; CourseNumber, "Start Time", "End Time")
        {
            Clustered = true;
        }
    }
}