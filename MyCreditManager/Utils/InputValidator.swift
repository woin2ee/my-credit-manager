//
//  InputValidator.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct InputValidator {
    
    func validateEmpty(forInput input: String) -> Bool {
        if input.isEmpty {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            return false
        } else {
            return true
        }
    }
}
