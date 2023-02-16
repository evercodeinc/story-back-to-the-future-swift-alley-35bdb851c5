import Foundation

extension Date {
    
  static func format(dateString: String) -> String? {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
      guard let date = dateFormatter.date(from: dateString) else {
          return nil
      }
      dateFormatter.dateFormat = "dd/MM/yyyy"
      let dateFormatted = dateFormatter.string(from: date)
      return dateFormatted
  }
    
    func travelToFuture(years: Int) -> String? {
     
        // TODO
        return nil
    }
}
