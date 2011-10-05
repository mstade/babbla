package se.stade.babbla.formatting
{
    public interface NumberFormat
    {
        function get sign():NumberSymbol;
        function get digits():Vector.<String>;
        
        function get nanSymbol():NumberSymbol;
        function get infinitySymbol():NumberSymbol;
        
        function get decimals():uint;
        function get decimalSeparator():String;
        
        function get groupSizes():Vector.<uint>;
        function get groupSeparator():String;
    }
}
