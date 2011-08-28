package se.stade.babbla
{
	public interface Culture
	{
		function get name():String;
		function get comparator():StringComparator;
		
		function get calendar():Calendar;
		function get numericalSystem():NumberSystem;
	}
}