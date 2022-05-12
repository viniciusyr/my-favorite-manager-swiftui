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
}
