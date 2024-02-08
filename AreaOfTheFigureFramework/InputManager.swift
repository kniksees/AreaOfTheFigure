//
//  InputManager.swift
//  AreaOfTheFigure
//
//  Created by Дмитрий Ерофеев on 08.02.2024.
//

import Foundation

class InputManager {

    enum InputManagerError: Error {
        case notCorrectIntput
    }
    
    static func getArea() throws {
        print("Insert count of sides _")
        let type = readLine()
        
        switch type {
        case "0":
            print("Insert radius _")
            if let r = Double(readLine() ?? "") {
                print(try Circle(r: r).getArea())
            } else {
                throw InputManagerError.notCorrectIntput
            }
        case "3":
            print("Insert sides _ _ _")
            if let s1 = Double(readLine() ?? ""), let s2 = Double(readLine() ?? ""), let s3 = Double(readLine() ?? "") {
                print(try Triangle(s1: s1, s2: s2, s3: s3).getArea())
            } else {
                throw InputManagerError.notCorrectIntput
            }
        default:
            throw InputManagerError.notCorrectIntput
        }
    }
}
