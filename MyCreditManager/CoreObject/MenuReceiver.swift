//
//  MenuReceiver.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct MenuReceiver {
    
    func printMenu() {
        print("원하는 기능을 입력해주세요.")
        print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    }
    
    func inputMenu() -> Menu? {
        guard let input = readLine() else { return nil }
        return .init(input: input)
    }
}
