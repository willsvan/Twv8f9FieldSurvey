
import Foundation

struct Report {
    let report: Report
    let classification: String
    let title: String
    let description: String
    let date: Date
    
    init(report: Report, classification: String, title: String, description: String, date: Date) {
        self.report = report
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(animalName: String, title: String, description: String, date: Date) {
        if let report = report(rawValue, animalName) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}



