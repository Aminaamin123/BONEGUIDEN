//
//  Pilgrim-HajiView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI


struct hajiModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("Haji är den årliga pilgrimsfärden som görs till Kaaba i Mecka. Minst en gång i livet ska varje muslim göra pilgrimsfärden. Ca 3 miljoner muslimer från hela världen gör den traditionella pilgrimsvandring varje år.").font(.system(size: 19)).padding().font(.caption)
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


struct Pilgrim_HajiView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Pilgrim_Haji"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: hajiModalView.init)

    }
}

struct Pilgrim_HajiView_Previews: PreviewProvider {
    static var previews: some View {
        Pilgrim_HajiView()
    }
}
