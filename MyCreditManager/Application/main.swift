//
//  main.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

let creditManager = CreditManager.init(menuReceiver: MenuReceiver(), menuHandler: MenuHandler())
creditManager.start()
