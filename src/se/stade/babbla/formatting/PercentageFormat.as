package se.stade.babbla.formatting
{
    public interface PercentageFormat extends NumberFormat
    {
        function get percentSymbol():NumberSymbol;
        function get permilleSymbol():NumberSymbol;
    }
}
