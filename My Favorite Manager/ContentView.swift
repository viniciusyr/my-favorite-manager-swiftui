//
//  ContentView.swift
//  My Favorite Manager
//
//  Created by Vinicius Rodrigues on 11/05/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView{
        Home()
            .navigationBarTitle("My Favorite Manager")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
}

