//  Created by B.T. Franklin on 6/20/22

#if !os(watchOS)

import XCTest
@testable import StringBooster

final class StringTitleCasedTests: XCTestCase {

    func testEmptyString() {
        let emptyString = ""
        XCTAssertEqual(emptyString, emptyString.titleCased)
    }

    func testSingleWord() {
        XCTAssertEqual("Single", "single".titleCased)
    }

    func testAlreadyTitlecased() {
        let testString = "A Title to Remember"
        XCTAssertEqual(testString, testString.titleCased)
    }

    func testTokenCleanup() {
        XCTAssertEqual("No Spaces at the Start", "   no spaces at the start".titleCased)
        XCTAssertEqual("No Spaces at the End", "no spaces at the end   ".titleCased)
        XCTAssertEqual("No Spaces in the Middle", "no spaces    in    the middle".titleCased)
    }

    func testNonDestructive() {
        XCTAssertEqual("How to Write an AI", "how to write an AI".titleCased)
        XCTAssertEqual("He Is Named McMurray, Just as I Am", "he is named McMurray, just as I am".titleCased)
        XCTAssertEqual("ALL of My Friends Matter to Me", "ALL of my friends matter to me".titleCased)
    }

    func testVarious() {
        XCTAssertEqual("A Title to Remember", "a title to remember".titleCased)
        XCTAssertEqual("Who Will I Go As?", "who will I go as?".titleCased)
        XCTAssertEqual("The Way to Succeed Is to Try", "the way to succeed is to try".titleCased)
        XCTAssertEqual("Mt. Everest in Summary", "mt. everest in summary".titleCased)
        XCTAssertEqual("The Mysterious Adventures of Sir Jackrabbit", "the mysterious adventures of Sir Jackrabbit".titleCased)
        XCTAssertEqual("My $500 Coat", "my $500 coat".titleCased)
        XCTAssertEqual("The Voyage of the 'Excalibur'", "the voyage of the 'Excalibur'".titleCased)
    }

}
#endif
