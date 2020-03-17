import UIKit

var str = "Hello, playground"

class Player {
    var name: String;
    var wager: Double;
    var guess: int_fast8_t;
    
    // Constructor
    init(name: String, wager: Double, guess: int_fast8_t) {
        self.name = name
        self.wager = wager                  // An error if a declared property isn't initialized
        self.guess = guess;
    }
    
}

class Casino{
    var guess: int_fast8_t;
    
    
    init() {
        
    }
}
