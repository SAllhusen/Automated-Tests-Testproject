permissionset 50000 "Uni PermissionSet"
{
    Assignable = true;
    Caption = 'Uni Permissionset';

    Permissions =
        tabledata "Uni Course Header" = RIMD,
        table "Uni Course Header" = X,
        tabledata "Uni Course Line" = RIMD,
        table "Uni Course Line" = X,
        tabledata "Uni Module" = RIMD,
        table "Uni Module" = X,
        tabledata "Uni Timetable" = RIMD,
        table "Uni Timetable" = X,
        page "Uni Course List" = X,
        page "Uni Course Card" = X,
        page "Uni Module Card" = X,
        page "Uni Module List" = X,
        page "Uni Timetable Card" = X,
        page "Uni Timetable List" = X;
}