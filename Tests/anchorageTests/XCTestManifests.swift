import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(anchorageTests.allTests),
        testCase(ClusterTests.allTests)
    ]
}
#endif
