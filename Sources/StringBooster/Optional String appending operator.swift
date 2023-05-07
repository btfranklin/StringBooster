//  Created by B.T. Franklin on 5/6/23

// Custom infix operator `?=` with assignment precedence
// Allows adding a non-optional string to an optional string, with the result being an optional string
infix operator ?=: AssignmentPrecedence

extension Optional where Wrapped == String {

    /// Combines an optional string and a non-optional string.
    ///
    /// If the optional string is not `nil`, this function appends the non-optional
    /// string to the optional string.
    /// If the optional string is `nil`, it will be set to the value of the non-optional string.
    /// - Parameters:
    ///   - lhs: The optional string (`String?`) to be updated.
    ///   - rhs: The non-optional string (`String`) to be added to the optional string.
    public static func ?= (lhs: inout String?, rhs: String) {
        // Check if the optional string has a value
        if let currentValue = lhs {
            // If it has a value, append the non-optional string to it
            lhs = currentValue + rhs
        } else {
            // If it doesn't have a value, set it to the non-optional string value
            lhs = rhs
        }
    }
}
