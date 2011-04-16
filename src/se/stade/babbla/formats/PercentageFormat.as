package se.stade.babbla.formats
{
	public interface PercentageFormat extends NumberFormat
	{
		function get percentSymbol():NumberSymbol;
		function get permilleSymbol():NumberSymbol;
	}
}