package se.stade.babbla.formatting
{
	public interface TypeFormatter
	{
		function get recognizedTypes():Vector.<Class>;
		
		function format(subject:*, template:String):String;
	}
}