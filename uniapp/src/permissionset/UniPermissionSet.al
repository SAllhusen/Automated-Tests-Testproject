permissionset 50003 "Uni PermissionSet"
{
    Assignable = true;
    Caption = 'Uni Permissionset';

    Permissions =
        tabledata "Uni Courses" = RIMD,
        table "Uni Courses" = X,
        page "Uni Courses" = X;
}