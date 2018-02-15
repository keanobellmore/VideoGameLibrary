//
//  main.swift
//  VideoGameLibrary
//
//  Created by Keano Bellmore on 2/13/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation
import Darwin
/*
 ADD GAME:
 1. Ask for name of the game
 2. The game should have a property that know what day the game was checked out
 3. Use an array to keep track of all the games in the library
 
 REMOVE A GAME:
 1. Remove the game selected from the library (Array)
 
 CHECK A GAME OUT:
 1. Specify the game you want to check out
 2. Keep track of the date that the game was checked out as well as the date the the game is due back
 
 CHECK IN A GAME:
 1. Reset the due date on the game and the date that the game was checked out
 
 QUIT THE PROGRAM:
 1. Self Explanatory
 
 */
var VideoGames = [videoGame]()
func checkGameIn(){
    print("what game would you like to check in?")
    var counter = 1
    print("Please select a number")
    for game in VideoGames {
        print("\(counter) \(game.name)")
        counter += 1
    }
    let currentDate = Date()
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy h:mm a"
    let returnDate = calendar.date(byAdding: .day, value: 0, to: currentDate)!
    mainMenu()
}
func checkGameOut() {
    print("what game would you like to check out?")
    var counter = 1
    print("Please select a number")
    for game in VideoGames {
        print("\(counter) \(game.name)")
        counter += 1
    }
    Int(readLine()!)!
    let currentDate = Date()
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy h:mm a"
    let returnDate = calendar.date(byAdding: .day, value: 3, to: currentDate)!
    print("your return date will be \(dateFormatter.string(from: returnDate))")
    mainMenu()
    
}
func removeGame() {
    print("what game would you like to remove?")
    var counter = 1
    print("Please select a number")
    for game in VideoGames {
        print("\(counter) \(game.name)")
        counter += 1
    }
    var input = Int(readLine()!)!
    VideoGames.remove(at: input - 1)
    mainMenu()
}

func addGame() {
    print("enter game name")
    let userInput = readLine()!
    let currentDate = Date()
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy h:mm a"
    let returnDate = calendar.date(byAdding: .day, value: 3, to: currentDate)!
    let game = videoGame(name: "\(userInput)", dueDate: returnDate)
    VideoGames.append(game)
    mainMenu()
}
func mainMenu() {
    print("""
1. Add games
2. Remove games
3. Check a game out
4. Check a game in
5. Quit
""")
    
    var input = Int(readLine()!)!
    if input == 1 {
        addGame()
    }
    if input == 2 {
        removeGame()
    }
    if input == 3 {
        checkGameOut()
    }
    if input == 4 {
        checkGameIn()
    }
    if input == 5 {
        exit(0)
    }
}
mainMenu()


