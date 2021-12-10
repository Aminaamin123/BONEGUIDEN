//
//  BudskapView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-25.
//

import SwiftUI

struct ModalBudskapView: View {
        @Environment(\.presentationMode) var presentationMode
        
        var body: some View{
            ScrollView{
                Text("Före sin död valde profeten, med gudomlig vägledning, ut tolv personer för att de skulle leda det islamiska samhället. De kallas imamer. Dessa imamer skulle förklara innehållet i budskapet för människorna. De skulle, med den kunskap de fått av profeten och gudomlig vägledning, visa människorna hur de skulle tillämpa de olika föreskrifterna och tolka olika lagar. Efter det att den tolfte imamen försvunnit är det meningen att folket för att förstå den islamiska synen på olika frågor, ska lita till de ibland dem som är mest bildade i religionen (Mujtahidin - plural av Mujtahid). Dessa Mujtahidin (de lärde) behövs huvudsakligen för att härleda och finna de religösa lösningarna i Koranen och Sunna (Vad profeten har sagt eller gjort) på dagliga frågor och problem. Ordet imam syftar inte alltid på de tolv imamerna Man kan säga imam om t.ex. den person som leder kollektiva böner. De tolv imamerna som profeten utsåg var: Ali, Hasan, Husayn, Zayn Al'Abidin, Al Bakir, Al Sadiq, Al Kazim, Al Rida, Al Taqi, Al Naqi, Al 'Askari och Al Mahdi.").font(.system(size: 19)).padding().font(.caption)
            
                Text("X").font(.system(size: 39)).foregroundColor(.red)        .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .padding(.top, 50.0)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("darkblue"))
            .edgesIgnoringSafeArea(.all)

        }
    }


    struct BudskapView: View {
        @State private var isPresented = false
        var body: some View {
            Button("Vem förmedlar budskapet efter profeten?"){
                self.isPresented.toggle()
            }.frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: ModalBudskapView.init)

        }
    }


struct BudskapView_Previews: PreviewProvider {
    static var previews: some View {
        BudskapView()
    }
}
