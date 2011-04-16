package se.stade.babbla.formats
{
	public interface DateFormat
	{
		function get dateSeparator():String;
		
		function get weeks():WeekFormat;
		function get months():Vector.<MonthFormat>;
		
		function get yearPattern():String;
		function get monthPattern():String;
		function get dayPattern():String;
	}
}