//
//  SpeakView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI
struct SpeakModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            
            Text("Anhängare av islam utgör världens näst största religiösa grupp. Enligt en studie 2015 har islam 1,8 miljarder anhängare, vilket utgör cirka 24,1% av världens befolkning. Det finns en stor del av denna befolkning som inte har arabiska som modersmål, en del som inte kan prata arabiska, men kan en del ord från koranen samt en del. Att prata arabiska är inte en del av att vara muslim. Men det kan hjälpa dig bättre förstå koranen.").font(.system(size: 19)).padding().font(.caption)
            Spacer()
            Text("X").font(.system(size: 39)).foregroundColor(.red)        .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkblue"))
        .edgesIgnoringSafeArea(.all)

    }
}


struct SpeakView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Alla Muslimer talar inte arabiska"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: SpeakModalView.init)
    }
}
struct SpeakView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakView()
    }
}
