import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputToProcess : String = ""
var ottawaTime : Int = 0
// Loop until valid input is received
while inputToProcess == "" {
    
    // Show the prompt
    print("", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if (inputAsInteger - ((inputAsInteger/100) * 100)) >= 23 {
                if (inputAsInteger - (inputAsInteger%100)) >= 59 {
                if inputAsInteger%100 <= 23 && inputAsInteger%100 >= 0{
                ottawaTime = inputAsInteger
                }
            }
            } else {
                print("\n")
                print("Please enter a value between 0 and 2359")
            }
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        inputToProcess = notNilInput
        
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
var differentPlaces : [String] = [" in Ottawa", " in Victoria", " in Edmonton", " in Winnipeg", " in Toronto", " in Halifax", " in St. John's"]
var timeDifferences : [Int] = [0, -300, -200, -100, 0, 100, 130]
var timesAtPlaces : [Int] = []
for i in 0...differentPlaces.count {
    if timeDifferences[i]%100 != 0  && (ottawaTime - ((ottawaTime/100) * 100)) >= 30 && ottawaTime + timeDifferences[i] !> 2359{
        ottawaTime + (timeDifferences[i]/100) * 100
        ottawaTime + ((ottawaTime%100 + timeDifferences[i]%100)-60)
    } else if ottawaTime + timeDifferences[i] > 2359 {
        ottawaTime + timeDifferences[i]
        ottawaTime - 2400
    } else {
        ottawaTime + timeDifferences[i]
    }
}

/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
for i in 0...differentPlaces.count {
print("\(ottawaTime)\(differentPlaces[i])")
}
