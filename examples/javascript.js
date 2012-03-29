/**
 * Class: VHS player
 * Play and record VHS video tapes with sound
 *
 * Deprecated!
 *
 * See also: DVD
 */
 var VHS = (function() {
   /**
    * Constructor: creates new instance of VHS player
    *
    * Params:
    * - tape {VHSTape} Cassette to play in
    */
   function VHS(tape) {
     this.tape = tape;
   };
 })();