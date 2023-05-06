//  Created by B.T. Franklin on 5/6/23

#if !os(watchOS)

import XCTest
@testable import StringBooster

final class OptionalStringOperatorTests: XCTestCase {

    func testOptionalStringAppend_nilAndAppend() {
        var testString: String? = nil
        let appendString = ", World!"

        testString ?= appendString

        XCTAssertEqual(testString, appendString, "Expected '\(appendString)', but got '\(testString ?? "nil")'")
    }

    func testOptionalStringAppend_nonNilAndAppend() {
        var testString: String? = "Hello"
        let appendString = ", World!"

        testString ?= appendString

        XCTAssertEqual(testString, "Hello, World!", "Expected 'Hello, World!', but got '\(testString ?? "nil")'")
    }

    func testOptionalStringAppend_emptyAndAppend() {
        var testString: String? = ""
        let appendString = ", World!"

        testString ?= appendString

        XCTAssertEqual(testString, appendString, "Expected '\(appendString)', but got '\(testString ?? "nil")'")
    }

    func testOptionalStringAppend_nonNilAndEmpty() {
        var testString: String? = "Hello"
        let emptyString = ""

        testString ?= emptyString

        XCTAssertEqual(testString, "Hello", "Expected 'Hello', but got '\(testString ?? "nil")'")
    }

    func testOptionalStringAppend_emptyAndEmpty() {
        var testString: String? = ""
        let emptyString = ""

        testString ?= emptyString

        XCTAssertEqual(testString, "", "Expected '', but got '\(testString ?? "nil")'")
    }
}
#endif
