package se.stade.babbla.formats
{
	public interface TimeFormat
	{
		function get timeSeparator():String;
		
		function get hourPattern():String;
		function get minutePattern():String;
		function get secondPattern():String;
		function get millisecondPattern():String;
	}
}