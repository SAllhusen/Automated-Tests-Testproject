permissionset 50003 "Uni PermissionSet"
{
    Assignable = true;
    Caption = 'Uni Permissionset';

    Permissions =
        tabledata "Uni Courses" = RIMD,
        table "Uni Courses" = X,
        tabledata "Uni Module" = RIMD,
        table "Uni Module" = X,
        page "Uni Courses" = X,
        page "Uni Module Card" = X,
        page "Uni Module List" = X;
}