//
//  Menu.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

enum Menu {
    case addStudent
    case deleteStudent
    case updateGrade
    case deleteGrade
    case showTotalGrade
    case exit
    
    init?(input: String) {
        switch input {
        case "1": self = .addStudent
        case "2": self = .deleteStudent
        case "3": self = .updateGrade
        case "4": self = .deleteGrade
        case "5": self = .showTotalGrade
        case "x": self = .exit
        case "X": self = .exit
        default:
            return nil
        }
    }
}
