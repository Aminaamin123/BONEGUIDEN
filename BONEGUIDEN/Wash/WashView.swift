//
//  WashView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct WashView: View {
    var body: some View {
            ZStack {
                
                Image("background").resizable().imageScale(.medium).frame(minWidth: 0,
                                   maxWidth: .infinity,
                                   alignment: .topLeading)
                VStack {
                    
                    HStack {
                        NavigationLink(
                            destination: WashGhuslView(),
                            label: { GoWashView(text: "Ghusl") }
                        )
                        
                        NavigationLink(
                            destination: WashWuduView(),
                            label: { GoWashView(text: "Wudu") }
                        )
                    }.padding()
                    
                    Text("Ghusl är en arabisk term för helkroppsrening som är obligatorisk före utförandet av olika ritualer och böner, för alla vuxna muslimer efter att ha utlöst eller avslutat menstruationscykeln.").frame(width: 310).padding()
                    
                    Text("Wudu är rengöringen som muslimer utför efter mindre föroreningar såsom urinering, avföring, flatulens, djup sömn och lätt blödning.").frame(width: 320)

                    Spacer()
                }.padding(10)
                .foregroundColor(.white)

            }.navigationTitle("Tvätt")
    }
}
struct GoWashView: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .frame(width: 150)
            .background(Color("lightblue"))
            .foregroundColor(.white)
            .font(.title3)
            .cornerRadius(13.0)
            
    }
}





struct WashStepsView: View {
    var name: String
    var text: String
    var body: some View {
        ZStack {
            Image("background").resizable()
            VStack {
                Text(text)
            }
        }
    }
}



struct WashView_Previews: PreviewProvider {
    static var previews: some View {
        WashView()
    }
}
