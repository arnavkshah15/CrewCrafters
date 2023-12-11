//
//  Hack_teams.swift
//  CrewCrafters
//
//  Created by user1 on 09/12/23.
//

import SwiftUI

struct Hack_teams: View {
    @State var showingDetail = false
    @State var searchText = ""
    var body: some View {
        NavigationView{
            List{
                //card1
                HStack{
                    
                    VStack{
                        Spacer()
                        Image("team_poster")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 85.0, height: 85.0)
                        Spacer()
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Team A")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Domain")
                            .font(.title2)
                        
                        Button("Open Position 1") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                        Button("Open Position 2") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                    }
                    Spacer()
                    ZStack{
                        Text("2/5")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
                    
                }.padding(.bottom, 15.0)
                
                //card2
                
                HStack{
                    
                    VStack{
                        Spacer()
                        Image("team_poster")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 85.0, height: 85.0)
                        Spacer()
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Team B")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Domain")
                            .font(.title2)
                        Spacer()
                        Spacer()
                        Button("Open Position 1") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                        
                    }
                    Spacer()
                    ZStack{
                        Text("1/5")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                    }
                    
                }.padding(.bottom, 15.0)
                
                
                //card3
                
                HStack{
                    
                    VStack{
                        Spacer()
                        Image("team_poster")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 85.0, height: 85.0)
                        Spacer()
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Team C")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Domain")
                            .font(.title2)
                        
                        Button("Open Position 1") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                        Button("Open Position 2") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                    }
                    Spacer()
                    ZStack{
                        Text("3/5")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
                    
                }.padding(.bottom, 15.0)
                
                
                
                //card4
                
                HStack{
                    
                    VStack{
                        Spacer()
                        Image("team_poster")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 85.0, height: 85.0)
                        Spacer()
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Team D")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("Domain")
                            .font(.title2)
                        
                        Button("Open Position 1") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                        Button("Open Position 2") {
                            
                        }.buttonStyle(.bordered)
                            .tint(.black)
                    }
                    Spacer()
                    ZStack{
                        Text("4/6")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
                    
                }.padding(.bottom, 15.0)
                
            }.searchable(text: $searchText)
                .navigationBarBackButtonHidden(true)
                .navigationTitle("Teams")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button (action: gohacks){
                            HStack {
                                Image(systemName: "chevron.backward")
                                Text("Hackathon")
                            }
                        }
                    }
                }
            
        }
    }
}
func gohacks() {
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: Hack_Land())
        window.makeKeyAndVisible()
    }
}
#Preview {
    Hack_teams()
}
