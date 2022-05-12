//
//  Home.swift
//  My Favorite Manager
//
//  Created by Vinicius Rodrigues on 11/05/22.
//

import SwiftUI

struct Home: View {
    @StateObject var gameModel: GameViewModel = .init()
    
    // MARK: Matched Geometry Namespace na aba Atual
    @Namespace var animation
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                VStack(alignment: .leading, spacing: 8) {
                    Text("Bem vindo de volta")
                        .font(.callout)
                    Text("Atualizações do dia")
                        .font(.title2.bold())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
                
                CustomSegmentedBar()
            }
            .padding()
        }
    }
    
    // MARK: Segmented Bar Personalizada
    @ViewBuilder
    func CustomSegmentedBar()->some View{
        let tabs = ["Atualmente", "Aguardados", "Zerados"]
        HStack(spacing: 10){
            ForEach(tabs, id: \.self){tab in
                Text(tab)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .scaleEffect(0.9)
                    .foregroundColor(gameModel.currentTab == tab ? .white : .black)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity)
                    .background{
                        if gameModel.currentTab == tab{
                            Capsule()
                                .fill(.black)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(Capsule())
                    .onTapGesture{
                        withAnimation{gameModel.currentTab = tab}
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
