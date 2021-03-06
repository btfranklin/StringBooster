//  Created by B.T. Franklin on 1/11/21.

#if !os(watchOS)

import XCTest
@testable import StringBooster

final class StringParseIntoArrayTests: XCTestCase {

    func testEmptyString() {
        let emptyString = ""
        XCTAssertEqual([], emptyString.parseIntoArrayByLine())
    }

    func testSimpleCase() {
        let testString =
            """
            person
            woman
            man
            camera
            tv
            """
        let targetArray = ["person", "woman", "man", "camera", "tv"]
        XCTAssertEqual(targetArray, testString.parseIntoArrayByLine())
    }

    func testMessyCase() {
        let testString =
            """
            person
            woman
            man

            camera
            tv


            """
        let targetArray = ["person", "woman", "man", "camera", "tv"]
        XCTAssertEqual(targetArray, testString.parseIntoArrayByLine())
    }
}
#endif
