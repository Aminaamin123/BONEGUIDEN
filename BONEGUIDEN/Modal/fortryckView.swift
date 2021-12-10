//
//  fortryckView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI
struct FortryckModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("Mohammed sa till och med “De bästa av er är ni som behandlar era fruar väl”. Islam i sin sanna version ger både rättigheter och respekt till kvinnor. Om en muslimsk man behandlar en kvinna illa eller förtrycker henne, så följer han inte orden från Allah. Många muslimska länder som accepterar förtryck av kvinnor har en egen tolkning av koranen eller så har man blandat gamla kulturella traditioner som man försöker rättfärdiga genom religion.").font(.system(size: 19)).padding().font(.caption)
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


struct fortryckView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Män som förtrycker kvinnor följer inte Islam"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: FortryckModalView.init)

    }
}


struct fortryckView_Previews: PreviewProvider {
    static var previews: some View {
        fortryckView()
    }
}
