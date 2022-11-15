//
//  InputValidator.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct InputValidator {
    
    enum ValidationError: Error {
        case invalidInputForm(String = "입력이 잘못되었습니다. 다시 확인해주세요.")
        
        var message: String {
            switch self {
            case .invalidInputForm(let errorMessage):
                return errorMessage
            }
        }
    }
    
    func validateEmpty(forInput input: String) throws {
        if input.isEmpty {
            throw ValidationError.invalidInputForm()
        }
    }
    
    func validateUpdateGradeInputForm(forInput input: String) throws -> (name: String, subjectTitle: String, grade: String) {
        let inputs = input.components(separatedBy: " ")
        guard inputs.count == 3,
              Grade(inputs[2]) != nil
        else {
            throw ValidationError.invalidInputForm()
        }
        
        return (name: inputs[0], subjectTitle: inputs[1], grade: inputs[2])
    }
    
    func validateDeleteGradeInputForm(forInput input: String) throws -> (name: String, subjectTitle: String) {
        let inputs = input.components(separatedBy: " ")
        guard inputs.count == 2
        else {
            throw ValidationError.invalidInputForm()
        }
        
        return (name: inputs[0], subjectTitle: inputs[1])
    }
}
