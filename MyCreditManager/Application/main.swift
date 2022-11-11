//
//  main.swift
//  MyCreditManager
//
//  Created by Jaewon Yun on 2022/11/11.
//

let menuReceiver: MenuReceiver = .init()
let inputValidator: InputValidator = .init()
let menuHandler: MenuHandler = .init(inputValidator: inputValidator)

let creditManager = CreditManager.init(
    menuReceiver: menuReceiver,
    menuHandler: menuHandler
)

creditManager.start()
