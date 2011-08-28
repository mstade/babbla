package se.stade.babbla.formatting
{
	import flash.utils.Dictionary;
	
	import se.stade.daffodil.define;

	public class StringFormatter implements Formatter
	{
		public function StringFormatter(formatters:Vector.<TypeFormatter>)
		{
			for each (var formatter:TypeFormatter in formatters)
			{
				registerTypeFormatter(formatter);
			}
		}
		
		private var getTypeFormatter:Dictionary = new Dictionary();
		
		public function registerTypeFormatter(formatter:TypeFormatter):void
		{
			for each (var type:Class in formatter.recognizedTypes)
			{
				getTypeFormatter[type] = formatter;
			}
		}
		
		public function format(template:String, ... substitutions):String
		{
			var subs:Object = substitutions;
			
			if (substitutions.length == 1 &&
                (
                    substitutions[0].constructor == Object ||
                    substitutions[0].constructor == Dictionary
                ))
				subs = substitutions[0];
			
			for (var token:String in subs)
			{
				var pattern:RegExp = new RegExp("\\{" + token + "(?::([^\\}]+))?\\}", "g");
				var match:Object;
				
				while (match = pattern.exec(template))
				{
					var parameters:String = match[1];
					var start:String = template.slice(0, match.index);
					var end:String = template.slice(match.index + match[0].length);
					
					var substitute:* = subs[token];
					var type:TypeFormatter = getTypeFormatter[define(substitute)];

                    var substitution:String = type ? type.format(substitute, parameters) : String(substitute);
					template = start + substitution + end;
                    
                    pattern.lastIndex -= match[0].length - substitution.length;
				}
			}
			
			return template;
		}
	}
}