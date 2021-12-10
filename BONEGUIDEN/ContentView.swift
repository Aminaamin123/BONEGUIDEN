//
//  ContentView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-14.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("background").resizable()
                VStack {
                    TabView(selection: $selection){
                        HomeView()
                            .tag(0)
                        PrayView()
                            .tag(1)
                        DuaView()
                            .tag(2)
                        AppsView()
                            .tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    Divider()
                    TabBarView(selection: $selection)
                }.navigationBarTitle("")
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
            }.edgesIgnoringSafeArea(.top)
        }.edgesIgnoringSafeArea(.top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
        }
    }
}



