//
//  CreditManager.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

import Foundation

struct CreditManager {
    
    private let menuReceiver: MenuReceiver
    private let menuHandler: MenuHandler
    
    init(menuReceiver: MenuReceiver, menuHandler: MenuHandler) {
        self.menuReceiver = menuReceiver
        self.menuHandler = menuHandler
    }
    
    func start() {
        while(true) {
            menuReceiver.printMenu()
            let menu = menuReceiver.inputMenu()
            menuHandler.execute(by: menu)
        }
    }
}
