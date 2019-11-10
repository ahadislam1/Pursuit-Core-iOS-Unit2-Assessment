import UIKit

class Crayon {
    var name: String
    var red: Double
    var green: Double
    var blue: Double
    var hex: String
    init(name: String, red: Double, green: Double, blue: Double, hex: String) {
        self.name = name
        self.red = red
        self.green = green
        self.blue = blue
        self.hex = hex
    }
    
}

let blue = Crayon(name: "Blue", red: 31, green: 117, blue: 254, hex: "#1F75FE")
let x: CGFloat = CGFloat(blue.red / 255)

