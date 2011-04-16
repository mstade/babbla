package se.stade.babbla
{
	import se.stade.babbla.formats.CurrencyFormat;
	import se.stade.babbla.formats.NumberFormat;
	import se.stade.babbla.formats.PercentageFormat;

	public interface NumericalSystem
	{
		function get number():NumberFormat;
		function get currency():CurrencyFormat;
		function get percentage():PercentageFormat;
	}
}