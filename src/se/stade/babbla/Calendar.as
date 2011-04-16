package se.stade.babbla
{
	import se.stade.babbla.formats.DateFormat;
	import se.stade.babbla.formats.TimeFormat;
	import se.stade.stilts.time.DateTime;
	import se.stade.stilts.time.TimeSpan;

	public interface Calendar
	{
		function get timeFormat():TimeFormat;
		function get dateFormat():DateFormat;
		
		function get currentDate():DateTime;
		
		function isLeapYear(date:DateTime):Boolean;
		function isLeapMonth(date:DateTime):Boolean;
		
		function getDaysInMonth(month:uint):uint;
		function getDaysInYear(year:Number):uint;
		
		function add(time:TimeSpan):void;
		function subtract(time:TimeSpan):void;
		
		function equals(other:Calendar):Boolean;
	}
}