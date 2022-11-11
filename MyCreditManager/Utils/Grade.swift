//
//  Grade.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

enum Grade {
    case Aplus
    case A
    case Bplus
    case B
    case Cplus
    case C
    case Dplus
    case D
    case F
    
    var score: Double {
        switch self {
        case .Aplus:
            return 4.5
        case .A:
            return 4.0
        case .Bplus:
            return 3.5
        case .B:
            return 3.0
        case .Cplus:
            return 2.5
        case .C:
            return 2.0
        case .Dplus:
            return 1.5
        case .D:
            return 1.0
        case .F:
            return 0.0
        }
    }
}
