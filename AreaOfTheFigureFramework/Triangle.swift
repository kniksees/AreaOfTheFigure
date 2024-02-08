//
//  Triangle.swift
//  AreaOfTheFigure
//
//  Created by Дмитрий Ерофеев on 08.02.2024.
//

import Foundation

class Triangle: FigureProtocol {
    
    enum TriangleError: Error {
        case negativeSide
        case imposibleTriangle
    }
    
    private let s1: Double
    private let s2: Double
    private let s3: Double
    private var p: Double {
        get {
            (s1 + s2 + s3) / 2
        }
    }
    
    init(s1: Double, s2: Double, s3: Double) throws {
        if s1 < 0 || s2 < 0 || s3 < 0 {
            throw TriangleError.negativeSide
        } else if s1 + s2 < s3 || s2 + s3 < s1 || s1 + s3 < s2 {
            throw TriangleError.imposibleTriangle
        } else {
            self.s1 = s1
            self.s2 = s2
            self.s3 = s3
        }
    }
    
    func getArea() -> Double {
        return sqrt(p * (p - s1) * (p - s2) * (p - s3))
    }
    
    func isRightTriangle() -> Bool {
        let arrOfSides = [s1, s2, s3].sorted()
        return arrOfSides[0] * arrOfSides[0] + arrOfSides[1] * arrOfSides[1] == arrOfSides[2] * arrOfSides[2]
    }
}
