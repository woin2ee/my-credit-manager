//
//  MenuHandler.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct MenuHandler {
    
    func execute(by menu: Menu?) {
        guard let menu = menu else { return printError() }
        
        switch menu {
        case .addStudent:
            addStudent()
        case .deleteStudent:
            deleteStudent()
        case .updateGrade:
            updateGrade()
        case .deleteGrade:
            deleteGrade()
        case .showTotalGrade:
            showTotalGrade()
        case .exit:
            exit()
        }
    }
    
    private func addStudent() {
        
    }
    
    private func deleteStudent() {
        
    }
    
    private func updateGrade() {
        
    }
    
    private func deleteGrade() {
        
    }
    
    private func showTotalGrade() {
        
    }
    
    private func exit() {
        
    }
    
    private func printError() {
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
}
