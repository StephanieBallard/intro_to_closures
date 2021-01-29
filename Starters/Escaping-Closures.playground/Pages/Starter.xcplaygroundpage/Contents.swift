import Foundation

let url = URL(string: "https://swapi.dev/api/people/1")!
let request = URLRequest(url: url)

// func dataTask receives a request and a closure
// and returns a urlsessiondatatask object ready to execute the request
let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
    print("\(String(describing: data))")
}

dataTask.resume()
