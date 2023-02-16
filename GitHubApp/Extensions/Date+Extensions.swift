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
      let calendar = Calendar.current
      let dateComponents = calendar.dateComponents([.year, .month, .day], from: self)
      guard let year = dateComponents.year,
              let month = dateComponents.month,
              let day = dateComponents.day else { return nil }
      let newDateComponents = DateComponents(year: year + years, month: month, day: day)
      guard let newDate = calendar.date(from: newDateComponents) else { return nil }
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "dd/MM/yyyy"
      let dateFormatted = dateFormatter.string(from: newDate)
      return dateFormatted
    }
}
