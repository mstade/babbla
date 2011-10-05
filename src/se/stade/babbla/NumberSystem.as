package se.stade.babbla
{
    import se.stade.babbla.formatting.CurrencyFormat;
    import se.stade.babbla.formatting.NumberFormat;
    import se.stade.babbla.formatting.PercentageFormat;

    public interface NumberSystem
    {
        function get number():NumberFormat;
        function get currency():CurrencyFormat;
        function get percentage():PercentageFormat;
    }
}
