//
//  Subject.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct Subject: Hashable {
    
    let title: String
    let grade: String
    
    static func ==(left: Subject, right: Subject) -> Bool {
        left.title == right.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
