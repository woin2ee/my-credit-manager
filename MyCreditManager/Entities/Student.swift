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
    
    var average: Double? {
        if subjects.count == 0 { return nil }
        let totalScore = subjects
            .compactMap { Grade.init(grade: $0.grade) }
            .reduce(0.0) { $0 + $1.score }
        return totalScore / Double(subjects.count)
    }
    
    static func ==(left: Student, right: Student) -> Bool {
        left.name == right.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
