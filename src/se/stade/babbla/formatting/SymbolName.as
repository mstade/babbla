package se.stade.babbla.formatting
{
	public final class SymbolName
	{
		public function SymbolName(full:String, abbreviated:String, shortest:String)
		{
			_full = full;
			_abbreviated = abbreviated;
			_shortest = shortest;
		}
		
		private var _full:String;
		public function get full():String
		{
			return _full;
		}
		
		private var _abbreviated:String;
		public function get abbreviated():String
		{
			return _abbreviated;
		}
		
		private var _shortest:String;
		public function get shortest():String
		{
			return _shortest;
		}
	}
}