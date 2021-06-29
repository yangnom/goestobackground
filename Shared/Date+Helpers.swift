//
//  Date+Helpers.swift
//  ObjectWillChange
//
//  Created by ynom on 6/28/21.
//

import Foundation

extension Date {
    
        func dateString(ofStyle style: DateFormatter.Style = .medium) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = .none
            dateFormatter.dateStyle = style
            return dateFormatter.string(from: self)
        }

        /// SwifterSwift: Date and time string from date.
        ///
        ///     Date().dateTimeString(ofStyle: .short) -> "1/12/17, 7:32 PM"
        ///     Date().dateTimeString(ofStyle: .medium) -> "Jan 12, 2017, 7:32:00 PM"
        ///     Date().dateTimeString(ofStyle: .long) -> "January 12, 2017 at 7:32:00 PM GMT+3"
        ///     Date().dateTimeString(ofStyle: .full) -> "Thursday, January 12, 2017 at 7:32:00 PM GMT+03:00"
        ///
        /// - Parameter style: DateFormatter style (default is .medium).
        /// - Returns: date and time string.
        func dateTimeString(ofStyle style: DateFormatter.Style = .medium) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = style
            dateFormatter.dateStyle = style
            return dateFormatter.string(from: self)
        }

    
}

// MARK: - Methods
public extension Calendar {
    /// SwifterSwift: Return the number of days in the month for a specified 'Date'.
    ///
    ///        let date = Date() // "Jan 12, 2017, 7:07 PM"
    ///        Calendar.current.numberOfDaysInMonth(for: date) -> 31
    ///
    /// - Parameter date: the date form which the number of days in month is calculated.
    /// - Returns: The number of days in the month of 'Date'.
    func numberOfDaysInMonth(for date: Date) -> Int {
        return range(of: .day, in: .month, for: date)!.count
    }
}
