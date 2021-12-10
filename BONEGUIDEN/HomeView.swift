//
//  HomeView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
    
            VStack {
                VStack {
                    Text("BÖNEGUIDEN").fontWeight(.semibold).foregroundColor(Color.white).font(.largeTitle)
                    OptionsView()
                }
                
                Image("bismillah").padding(.top, 55.0)
                
                Text("Börja allt med att säga bishmillah")
                    .foregroundColor(.white)
                    .padding(.top)
                    .font(.title2)
                
                Spacer()
                
            }.padding(.top, 40.0).padding(.bottom, 15.0)
            .frame(minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .topLeading)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
