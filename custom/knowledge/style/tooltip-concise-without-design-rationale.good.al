table 50261 "Sample Season Setup Good"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        // Mirrors MOO Sales Setup."Season Dim. Code" without an app dependency; see docs/Features/season-dimension.md.
        field(2; "Season Dimension Code"; Code[20])
        {
            Caption = 'Season Dimension Code';
            TableRelation = Dimension;
            ToolTip = 'Specifies the dimension that holds the season on demand and supply lines. Use the same dimension as Season Dim. Code in MOO Sales Setup.';
        }
    }
}
