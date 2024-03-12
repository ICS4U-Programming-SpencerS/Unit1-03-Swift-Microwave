//
//  Microwave.swift
//
//  Created by Spencer Scarlett
//  Created on 2024-Feb-26
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Logging company program

// Important module
import Foundation

// Variables and consts for later
let PIZZA_TIME: Int = 45
let SUB_TIME: Int = 60
let SOUP_TIME: Int = 105
var foodWantInt: Int = 0
var foodAmountInt: Int = 0
var finalCalculatedInt: Int = 0
var minutesInt: Int = 0
var secondsInt: Int = 0

// For invalid inputs (strings)
enum ErrorMessages: Error {
    case invalidUserChoice
}

do {
    // Opening message
    print("Hello, enter the type of food you wish to eat!(Pizza = 1, Sub = 2, Soup = 3): ")
    // input message with needed crash protection, converts str to int
    guard let foodWantSTR = readLine(), let foodWantInt = Int(foodWantSTR) else {
        throw ErrorMessages.invalidUserChoice
    } 
    // if statement to check if input is within range
    if foodWantInt <= 0 || foodWantInt > 3 {
        print("Invalided food type selected.")
    } else {
        // if statement(reused) but for amount
        print("Enter the amount you wish to microwave!")
        guard let foodAmountSTR = readLine(), let foodAmountInt = Int(foodAmountSTR) else {
            throw ErrorMessages.invalidUserChoice
            // same range checker but for amount
            } ; if foodAmountInt <= 0 || foodAmountInt > 3 {
                print("Invalided amount selected")
                } else {
                    // switch case calculations
                    switch foodWantInt {
                        case 1:
                            // pizza case calculation
                            finalCalculatedInt = PIZZA_TIME * foodAmountInt
                            minutesInt = (finalCalculatedInt / 60)
                            secondsInt = finalCalculatedInt - (minutesInt * 60)
                            print("\(foodAmountInt) pizza's takes \(minutesInt)m's")
                            print("and \(secondsInt)s's")
                        case 2:
                            // sub case calculation
                            finalCalculatedInt = SUB_TIME * foodAmountInt
                            minutesInt = (finalCalculatedInt / 60)
                            secondsInt = finalCalculatedInt - (minutesInt * 60)
                            print("\(foodAmountInt) soup's takes \(minutesInt)m's")
                            print("and \(secondsInt)s's")
                        case 3:
                            // soup case calculation
                            finalCalculatedInt = SOUP_TIME * foodAmountInt
                            minutesInt = (finalCalculatedInt / 60)
                            secondsInt = finalCalculatedInt - (minutesInt * 60)
                            print("\(foodAmountInt) sub's takes \(minutesInt)m's")
                            print("and \(secondsInt)s's")
                        default:
                            print("Backup")
                    }
                }
    }
} catch {
    print("Error: Input must be 1, 2, or 3")
}