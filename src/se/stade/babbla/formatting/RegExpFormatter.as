package se.stade.babbla.formatting
{
    public class RegExpFormatter implements TypeFormatter
    {
        public function get recognizedTypes():Vector.<Class>
        {
            return new <Class>[RegExp];
        }
        
        public function format(subject:*, parameters:String):String
        {
            return subject.source;
        }
    }
}
