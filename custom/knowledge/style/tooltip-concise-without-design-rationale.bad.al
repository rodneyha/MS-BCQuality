table 50260 "Sample Season Setup Bad"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Season Dimension Code"; Code[20])
        {
            Caption = 'Season Dimension Code';
            TableRelation = Dimension;
            ToolTip = 'Specifies the standard dimension that carries the season on demand and supply document lines. Set it to the same dimension MOO Sales Setup uses for its own Season Dim. Code, so seasons agree across apps without this app depending on MOO Sales.';
        }
    }
}
