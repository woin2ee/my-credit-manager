//
//  InputValidator.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

enum ValidationError: Error {
    case invalidInputForm
}

struct InputValidator {
    
    func validateEmpty(forInput input: String) -> Bool {
        if input.isEmpty {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            return false
        } else {
            return true
        }
    }
    
    func validateSubjectInfoForm(forInput input: String) -> Result<(name: String, subjectTitle: String, grade: String), Error> {
        let inputs = input.components(separatedBy: " ")
        guard inputs.count == 3,
              Grade(inputs[2]) != nil
        else {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            return .failure(ValidationError.invalidInputForm)
        }
        
        return .success((name: inputs[0], subjectTitle: inputs[1], grade: inputs[2]))
    }
}
