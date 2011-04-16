package se.stade.babbla.formats
{
	import se.stade.stilts.time.DayOfWeek;
	
	public interface WeekFormat
	{
		function get firstDay():DayOfWeek;
		function get days():Vector.<DayFormat>;
	}
}