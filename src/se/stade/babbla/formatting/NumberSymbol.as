package se.stade.babbla.formatting
{
    public final class NumberSymbol
    {
        public function NumberSymbol(positive:String, negative:String)
        {
            _positive = positive;  
            _negative = negative;  
        }

        private var _positive:String;
        public function get positive():String
        {
            return _positive;
        }
        
        private var _negative:String;
        public function get negative():String
        {
            return _negative;
        }
    }
}
