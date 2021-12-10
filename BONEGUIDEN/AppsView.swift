//
//  AppsView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
            VStack {
                Text("APPAR").fontWeight(.semibold).foregroundColor(Color.white).font(.largeTitle).padding(.top, 36.0)
                HStack {
                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/muslim-pro-quran-athan-azan/id388389451")!, label:{
                                AppDisplayView(text: "Muslim pro", image: "muslimpro")
                        })
                        Text("Muslim pro")
                            .foregroundColor(.white)
                            .frame(width: 140)
                    }

                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/muslimappen-b%C3%B6netider-qibla/id1024809056")!, label:{
                                AppDisplayView(text: "Muslimappen", image: "muslimappen")
                        })
                        Text("Muslimappen").foregroundColor(.white)
                            .frame(width: 140)
                    }

                }.frame(width: 360)
                
                HStack {
                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/heliga-koranen-p%C3%A5-svenska/id1086314191")!, label:{
                      
                            AppDisplayView(text: "Koranen", image: "koranen")
                            
                        })
                        Text("Kornen").foregroundColor(.white)
                            .frame(width: 140)
                    }

                    
                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/hisn-al-muslim-fortress/id684520441")!, label:{
                            AppDisplayView(text: "Hisn al Muslim", image: "hisn")
                        })
                        Text("Hisn al Muslim").foregroundColor(.white)
                            .frame(width: 140)
                    }
                    
                }.frame(width: 360)
                
                HStack {
                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/salat-learning-salah/id875280793")!, label:{
                                AppDisplayView(text: "Salat", image: "salat")
                        })
                        Text("Salat").foregroundColor(.white)
                            .frame(width: 140)
                    }
                    
                    VStack() {
                        Link(destination: URL(string: "https://apps.apple.com/se/app/99-names-of-allah-and-audio/id438029098")!, label:{
                            AppDisplayView(text: "99 names of allah", image: "99")
                        })
                        Text("99 names of allah").foregroundColor(.white)
                            .frame(width: 140)
                    }
                    
                }.frame(width: 360)
                Spacer()
            }
    }
}

struct AppDisplayView: View {
    var text: String
    var image: String
    var body: some View {
        VStack {
            Image(image).resizable().frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
        }
        .cornerRadius(13.0)
    }
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        AppsView()
    }
}
