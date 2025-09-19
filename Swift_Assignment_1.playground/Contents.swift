import UIKit

// temprerature conversion
let celsius: Int = 32
let fahrenheit: Int = 68
let cToF = (celsius * 9 / 5) + 32
let fToC = (fahrenheit - 32) * 5 / 9

// converts celsius to fahrenheit
print("Temprerature Converter\n\(celsius)°C is \(cToF)°F\n")

// list of temperatures
let celsiusTemps: [Int?] = [1, 35, 24, 17, 50, -45]

// evaluates a temperature(s) and provides feedback
func evalutateTemps(_ temp: [Int?]) {
   
   for t in temp {
       guard let temp = t else {
           print("No temerature provided.")
           continue
       }
       switch t! {
       case ...4:
           print("\(temp)°C it's Cold")
       case 5..<12:
           print("\(temp)°C it's Cool")
       case 13..<25:
           print("\(temp)°C it's Warm")
       case 25...:
           print("\(temp)°C it's Hot")
       default:
           print("Invalid")
       } // switch{}
   } // for{}
} // evalutateTemps()

// average calculator
let validTemps = celsiusTemps.compactMap { $0 } // remove nils
let total = validTemps.reduce(0, +) // calculate total
let count = validTemps.count // count
let average = Double(total) / Double(count) // compute average

// evalutates temperatures
print("Evaluating Tempreratures")
evalutateTemps(celsiusTemps)

// prints average
print("\nAverage Temperature\n\(String(format: "%.0f", average))°C")
