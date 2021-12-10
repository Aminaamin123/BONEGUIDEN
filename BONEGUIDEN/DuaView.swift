//
//  DuaView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct DuaView: View {
    
 
    var body: some View {
    

            VStack {
                Text("DUA").fontWeight(.semibold).foregroundColor(Color.white).font(.largeTitle).padding(.top, 35.0)
                
                ScrollView {
                    Text("Dua är ett arabiskt ord som bokstavligen betyder önskan, kallan, åkallan och bön. I koranvers 40:60, uppmanar gud en att kalla på Honom. Dua har i en hadith beskrivits som ett hjälpmedel för att dyrka Gud.").padding().foregroundColor(.white)
                    
                    NavigationLink(
                        destination: DuaSleep(),
                        label: {
                            DuaButtonView(text: " Sömn",img: "sleeping")
                        })
                    
                    
                    NavigationLink(
                        destination: DuaOutsideView(),
                        label: {
                            DuaButtonView(text: "Utomhus",img: "exit-door")
                        })
                    
                    NavigationLink(
                        destination: DuaPrayView(),
                        label: {
                            DuaButtonView(text: "Pray",img: "praying")
                        })

                    
                    NavigationLink(
                        destination: DuaFamilyView(),
                        label: {
                            DuaButtonView(text: "Familj",img: "family")
                        })
                    
                    NavigationLink(
                        destination: DuaAllahView(),
                        label: {
                            DuaButtonView(text: "Beröm Allah", img: "allah")
                        })
                    NavigationLink(
                        destination: SickView(),
                        label: {
                            DuaButtonView(text: "Sjukdom och död",img: "fever")
                        }).padding(.bottom, 70.0)
                    
                }
                }
            }
        }

struct DuaButtonView: View {
    var text: String
    var img: String
    var body: some View {
                HStack{
                    Image(img).resizable().frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(text)
                }.frame(width: 300, alignment: .leading)
                .padding()
                .background(Color("darkblue"))
                .cornerRadius(13).padding(.horizontal, 5.0)
                .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                .foregroundColor(.white)
        
    }
    
}

struct DuaView_Previews: PreviewProvider {
    static var previews: some View {
        DuaView()
            .previewDevice("iPhone SE (2nd generation)")
    }
}
