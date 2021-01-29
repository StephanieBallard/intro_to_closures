import Foundation

func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = closure(originalString)
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = ["amy", "sheldon", "lenard", "penny"]

//Create a function named "\(yourName)Capitalize" that accepts a String, capitalizes it and returns it
func amyCapitalized(amyString: String) -> String {
    return amyString.capitalized
}

let capitalizedNames = transform(originalStrings: lowercaseNames, closure: amyCapitalized(amyString:))
print(capitalizedNames)
