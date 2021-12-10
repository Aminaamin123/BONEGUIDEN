//
//  människanView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-25.
//

import SwiftUI

struct Modalma_nniskanView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ScrollView{
            Text("Människan skapades av jord, och Adam var den första människan på jorden. Han och hans hustru levde i paradiset innan de åt från ett förbjudet träd och sändes till jorden. Människan skapades som människa och har inte utvecklats från apor eller något annat djur.").font(.system(size: 19)).padding().font(.caption)
        
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


struct ma_nniskanView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Hur skapades människan?"){
            self.isPresented.toggle()
        }.frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: Modalma_nniskanView.init)

    }
}

struct ma_nniskanView_Previews: PreviewProvider {
    static var previews: some View {
        ma_nniskanView()
    }
}
