//
//  VärdeView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-25.
//

import SwiftUI

struct ModalVa_rdeView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ScrollView{
            Text("Människan är den mest värdefulla varelse Gud skapat. Hela universum finns till för hennes skull. Den heliga Koranen säger att när Gud skapade Adam, beordrade Han alla änglar att falla på knä inför honom. Människan är den mest fulländade varelse som Gud skapat. Hon är den intelligentaste och den som är mest hedevärd av Gud. Det är människan som är förvaltare för Guds läror på jorden.").font(.system(size: 19)).padding().font(.caption)
        
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


struct Va_rdeView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Vad har människan för värde?"){
            self.isPresented.toggle()
        }.frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: ModalVa_rdeView.init)

    }
}

struct Va_rdeView_Previews: PreviewProvider {
    static var previews: some View {
        Va_rdeView()
    }
}
