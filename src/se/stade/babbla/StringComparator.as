package se.stade.babbla
{
	public interface StringComparator
	{
		function compare(first:String, second:String):int;
		function equals(first:String, second:String):Boolean;
		
		function contains(subject:String, substring:String):Boolean;
		function startsWith(subject:String, prefix:String):Boolean;
		function endsWith(subject:String, prefix:String):Boolean;
		
		function indexOf(subject:String, substring:String, start:int = 0):int;
		function lastIndexOf(subject:String, substring:String, start:int = 0):int;
	}
}