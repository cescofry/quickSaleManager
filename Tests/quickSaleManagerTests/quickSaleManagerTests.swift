import XCTest
@testable import quickSaleManager

class quickSaleManagerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(quickSaleManager().text, "Hello, World!")
    }


    static var allTests : [(String, (quickSaleManagerTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
