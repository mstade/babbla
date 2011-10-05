package se.stade.babbla.formatting
{
    import se.stade.stilts.string.padLeft;
    import se.stade.stilts.string.padRight;
    import se.stade.stilts.time.DateTime;
    
    public class SimpleDateFormatter implements TypeFormatter
    {
        public function get recognizedTypes():Vector.<Class>
        {
            return new <Class>[Date, DateTime];
        }
        
        public var shortDayname:Vector.<String> = new <String>["Sun", "Mon", "Tue", "Wed", "Fri", "Sat"];
        public var fullDayname:Vector.<String> = new <String>["Sunday", "Monday", "Tuesday", "Wednesday", "Friday", "Saturday"];
        
        public var shortMonthname:Vector.<String> = new <String>["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        public var fullMonthname:Vector.<String> = new <String>["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        
        protected function formatDateParts(input:String, year:Number, month:Number, dayOfWeek:Number):String
        {
            var shortYear:String = padLeft("00", String(year).substr(-2));
            var monthNum:String  = padLeft("00", String(month).slice(-2));
            var dayNum:String    = padLeft("00", dayOfWeek);
            
            return input.replace(/YYYY/g, padLeft("0000", year))
                        .replace(  /YY/g, padLeft("00", shortYear))
                        .replace(/MMMM/g, fullMonthname[month])
                        .replace( /MMM/g, shortMonthname[month])
                        .replace(  /MM/g, monthNum)
                        .replace(/DDDD/g, fullDayname[dayOfWeek])
                        .replace( /DDD/g, shortDayname[dayOfWeek])
                        .replace(  /DD/g, dayNum);
        }
        
        public var amDesignator:String = "AM";
        public var pmDesignator:String = "PM";
        
        protected function formatTime(input:String, hour:uint, minute:uint, second:uint, millisecond:uint):String
        {
            var designator:String = hour > 12 ? amDesignator : pmDesignator;
            
            var tenths:String = String(millisecond).slice(0, 1);
            var hundreths:String = padRight(String(millisecond).slice(0, 2), "00");
            
            return input.replace( /hh/g, padLeft("00", hour % 13))
                        .replace( /HH/g, padLeft("00", hour))
                        .replace( /mm/g, padLeft("00", minute))
                        .replace( /ss/g, padLeft("00", second))
                        .replace(  /t/g, designator.charAt(0))
                        .replace( /tt/g, designator)
                        .replace(/fff/g, padRight(millisecond, "000"))
                        .replace( /ff/g, padRight(hundreths,   "00"))
                        .replace(  /f/g, padRight(tenths,      "0"));
        }
        
        public function format(subject:*, template:String):String
        {
            if (subject is Date)
            {
                var asDate:Date = subject as Date;
                return formatDateParts(template, asDate.fullYear, asDate.month, asDate.day);
            }
            else if (subject is DateTime)
            {
                var myDate:DateTime = subject as DateTime;
                return formatDateParts(template, myDate.year, myDate.month, myDate.dayOfWeek.value);
            }
            
            return template;
        }
    }
}
