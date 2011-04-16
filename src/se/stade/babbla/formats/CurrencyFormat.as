package se.stade.babbla.formats
{
	public interface CurrencyFormat extends NumberFormat
	{
		function get symbol():SymbolName;
	}
}