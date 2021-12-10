//
//  PelareView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct PelareModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("1. Shahada – Trosbekännelsen. The Salah, or Salat – Bönen.").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            
            Text("2.Zakat – Allmosan. ").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            
            Text("3. Sawm ").padding()
                .font(.system(size: 19)).font(.caption).frame(width: 300, alignment: .leading)
            
            Text("4. Fastan under Ramadan. ").padding().font(.system(size: 19)).font(.caption).frame(width: 300, alignment: .leading)
            
            Text("5. Haji – Vallfärden till Mecka").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            
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


struct PelareView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Fem pelare"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: PelareModalView.init)

    }
}
struct PelareView_Previews: PreviewProvider {
    static var previews: some View {
        PelareView()
    }
}
