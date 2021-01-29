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

let lowercaseNames: [String] = ["amy", "bob", "ryan", "sue"]
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (firstString: String) -> String in
    return firstString.capitalized
})
print(capitalizedNames)
