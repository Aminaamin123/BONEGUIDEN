//
//  ModalUIView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct FullScreenModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Text("sss")
            Text("dddd")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ModalUIView: View {
    @State private var isPresented = false
    var body: some View {
        Button("kick"){
            self.isPresented.toggle()
        }.fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
    }
}

struct ModalUIView_Previews: PreviewProvider {
    static var previews: some View {
        ModalUIView()
    }
}
