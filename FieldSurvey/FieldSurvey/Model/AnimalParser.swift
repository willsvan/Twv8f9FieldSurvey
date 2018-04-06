import foundation

class AnimalParser {
    
    static let dateFormatter = dateFormatter()
    
    class func parse(_ data: Data) -> [Report] {
        var animalReports = [Report]()
        dateFormatter.dateformat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
            status == "ok" {
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: Any] {
                    if let animalName = observation["classification"],
                    let reportTitle = observation["title"],
                    let obsDescription =
                        observation["description"],
                    let dateString = observation["date"],
                        let date = dateFormatter.date(from: dateString){
                        
                        if let report = Report(animalName: animalName, reportTitle: reportTitle, obsDescription:  obsDescription, dateString:  dateString) {
                            animalReports.append(report)
                        }
                        }
                    }
                }
            }
        }
        
        
        
        
        return animalReports
    }
    
}


