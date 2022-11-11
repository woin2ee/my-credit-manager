//
//  MenuHandler.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

final class MenuHandler {
    
    private var students: Set<Student> = []
    
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
        print("추가할 학생의 이름을 입력해주세요.")
        guard
            let name = readLine(),
            !name.isEmpty
        else { return print("입력이 잘못되었습니다. 다시 확인해주세요.") }
        
        let newStudent: Student = .init(name: name, subjects: [])
        if students.contains(newStudent) {
            print("\(name)은(는) 이미 존재하는 학생입니다. 추가하지 않습니다.")
        } else {
            students.insert(newStudent)
            print("\(name) 학생을 추가했습니다.")
        }
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
        print("프로그램을 종료합니다...")
        Darwin.exit(0)
    }
    
    private func printError() {
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
}
