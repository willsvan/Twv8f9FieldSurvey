
import Foundation

class AnimalParserJSONLoader {
    
    class func load(fileName: String) -> [Report] {
        var reports = [Report]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                events = AnimalParser.parse(data)
            }
        }
    }
}
