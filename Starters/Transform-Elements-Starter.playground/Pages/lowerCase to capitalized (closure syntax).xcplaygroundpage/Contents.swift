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

let lowercaseNames: [String] = ["amy", "jamie", "stacy", "tina"]
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (firstString: String) -> String in
    return firstString.capitalized
})
print(capitalizedNames)


<#Full Syntax#>

<#Trailing Closure Syntax#>

<#Inferring input type#>

<#Inferring output type#>

<#Shorthand argument name#>

<#Omitting return keyword#>

<#Keypaths#>
