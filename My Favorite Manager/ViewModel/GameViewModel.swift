//
//  GameViewModel.swift
//  My Favorite Manager
//
//  Created by Vinicius Rodrigues on 11/05/22.
//

import SwiftUI
import CoreData

class GameViewModel: ObservableObject {
    @Published var currentTab: String = "Atualmente"
    
    // MARK: Propriedades do New Game
    @Published var openEditGame: Bool = false
    @Published var gameTitle: String = ""
    @Published var gameColor: String = "Yellow"
    @Published var gameDeadline: Date = Date()
    @Published var GameType: String = "Basic"
}
