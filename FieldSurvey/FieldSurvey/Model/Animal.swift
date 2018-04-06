
import Foundation

enum Animal: String {
    case amphibian
    case bird
    case fish
    case insect
    case plant
    case rabbit
    case snake
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
