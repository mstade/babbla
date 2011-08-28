package se.stade.babbla.formatting
{
	public class NumberFormatter implements TypeFormatter
	{
		public var numberFormat:NumberFormat;
		
		public function get recognizedTypes():Vector.<Class>
		{
			return new <Class>[Number];
		}
		
		public function format(subject:*, template:String):String
		{
			if (subject is Number)
			{
				var num:Number = Number(subject);
				return String(num);
			}
			
			return template;
		}

	}
}