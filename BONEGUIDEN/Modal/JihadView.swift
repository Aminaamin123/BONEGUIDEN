//
//  JihadView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI
struct JihadModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("Ordet Jihad betyder “att kämpa” och “att sträva”").font(.system(size: 19)).padding().font(.caption)
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


struct JihadView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Jihad"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: JihadModalView.init)

    }
}
struct JihadView_Previews: PreviewProvider {
    static var previews: some View {
        JihadView()
    }
}
