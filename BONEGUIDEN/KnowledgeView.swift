//
//  KnowledgeView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct KnowledgeView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().imageScale(.medium)
            ScrollView {
                
                Text("Den som ska övergå till islam ska säga följande ord: “Det finns ingen gud utom Gud och Muhammed är hans profet“. Trosbekännelsen innebär en förpliktelse att lyda Gud och att följa profeten. För att kunna fullföja detta krävs kunskap.").padding([.top, .leading, .trailing])
                
                HStack{
                    fortryckView()
                    _bonerView()
                }
                HStack{
                    ModalFastanView()
                    Pilgrim_HajiView()
                }
                HStack{
                    JihadView()
                    KalendernView()
                }
                HStack{
                    PelareView()
                    SpeakView()
                }
                
                
            }.navigationTitle("Bra att veta")
            .navigationBarItems(leading:
                                    Image("knowledge").resizable().frame(width: 50, height: 50))
            .foregroundColor(.white)
            
        }
    }
}

struct KnowledgeDisplayView: View {
    var title : String
    var text : String
    var body: some View {
        VStack{
            VStack {
                Text(title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                Text(text).padding([.leading, .bottom, .trailing])
            }
            .frame(width: 340)
            .background(Color("bluee"))
            .cornerRadius(13.0)
            .foregroundColor(.white)
            
        }
        
    }
}

struct KnowledgeView_Previews: PreviewProvider {
    static var previews: some View {
        KnowledgeView()
    }
}
