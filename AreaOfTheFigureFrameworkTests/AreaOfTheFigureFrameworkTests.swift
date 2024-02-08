//
//  AreaOfTheFigureFrameworkTests.swift
//  AreaOfTheFigureFrameworkTests
//
//  Created by Дмитрий Ерофеев on 08.02.2024.
//

import XCTest

@testable import AreaOfTheFigureFramework

final class AreaOfTheFigureFrameworkTests: XCTestCase {

    func testExample() throws {
        XCTAssertThrowsError(try Circle(r: -3))
        XCTAssertNoThrow(try Circle(r: 1))
        XCTAssertNoThrow(try Circle(r: 0))
        XCTAssert(abs((try Circle(r: 11.1).getArea()) - 387.07563084879837) < 0.0001)
        
        XCTAssertThrowsError(try Triangle(s1: -1, s2: 1, s3: 1))
        XCTAssertThrowsError(try Triangle(s1: 1, s2: 1, s3: 3))
        XCTAssertNoThrow(try Triangle(s1: 3, s2: 3, s3: 3))
        XCTAssertEqual(try Triangle(s1: 3, s2: 3, s3: 3).isRightTriangle(), false)
        XCTAssertEqual(try Triangle(s1: 3, s2: 4, s3: 5).isRightTriangle(), true)
        XCTAssert(abs((try Triangle(s1: 3.45, s2: 4.45, s3: 5.12).getArea()) - 7.552525805318375) < 0.0001)
        
    }
}
