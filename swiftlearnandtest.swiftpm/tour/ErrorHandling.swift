//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 7/04/25.
//

import Foundation

enum PrinterError : Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "NeverHasTone" {
        throw PrinterError.noToner
    }
    return "Job \(job) sent to \(printerName)"
}

func testSend() {
    do {
        let response: String = try send(job: 1, toPrinter: "OK")
        print(response)
    } catch {
        print(error)
    }
}

func testSendV2() {
    do {
        let response: String = try send(job: 1, toPrinter: "OK")
        print(response)
    } catch PrinterError.noToner {
        print("Error no toner")
    } catch let printerError as PrinterError {
        print("Error \(printerError)")
    } catch {
        print("Error \(error)")
    }
}

func testSendV3() {
    let response: String? = try? send(job: 1, toPrinter: "OK")
}

class Fridge {
    
    var fridgeIsOpen = false
    let fridgeContent: [String] = ["milk", "eggs", "bread"]
    
    func testDefer(_ food: String) -> Bool {
        fridgeIsOpen = true
        defer {
            fridgeIsOpen = false
        }
        let result: Bool = fridgeContent.contains(food)
        
        return result
    }
}

