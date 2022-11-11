//
//  Student.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct Student: Hashable {
    
    let name: String
    var subjects: Set<Subject> = []
    
    static func ==(left: Student, right: Student) -> Bool {
        left.name == right.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
