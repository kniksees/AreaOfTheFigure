//
//  Circle.swift
//  AreaOfTheFigure
//
//  Created by Дмитрий Ерофеев on 08.02.2024.
//

import Foundation

class Circle: FigureProtocol {
    
    enum CircleError: Error {
        case negativeRadius
    }
    
    private let r: Double
    
    init(r: Double) throws {
        if r < 0 {
            throw CircleError.negativeRadius
        } else {
            self.r = r
        }
    }
    
    func getArea() -> Double {
        return Double.pi * r * r
    }
}
