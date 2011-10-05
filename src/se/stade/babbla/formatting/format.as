package se.stade.babbla.formatting
{
    public function format(template:String, ... substitutions):String
    {
        return formatter.format.apply(null, [template].concat(substitutions));
    }
}
import se.stade.babbla.formatting.Formatter;
import se.stade.babbla.formatting.RegExpFormatter;
import se.stade.babbla.formatting.SimpleDateFormatter;
import se.stade.babbla.formatting.StringFormatter;
import se.stade.babbla.formatting.TypeFormatter;


const formatter:Formatter = new StringFormatter(new <TypeFormatter>
[
    new SimpleDateFormatter,
    new RegExpFormatter
]);
