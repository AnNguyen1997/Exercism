//Solution goes in Sources

import Foundation

class Gigasecond {
    var description: String = ""
    
    init?(from: String) {
       let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        if let fromDate = dateFormatter.date(from: from) {
            let afterDate = fromDate.addingTimeInterval(1_000_000_000)
            self.description = dateFormatter.string(from: afterDate)
        } else {
            return nil
        }

    
    }
}



