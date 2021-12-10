//
//  5bonerView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct bonerModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("Salat al-fajr: skymning, innan soluppgång").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            Text("Salat al-zuhr: middag, efter solen passerar sin högsta punkt, Salat al-‘asr: senare på eftermiddagen").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            Text("Salat al-maghrib: precis efter solnedgång").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
            Text("Salat al-‘isha: mellan solnedgång och midnatt").font(.system(size: 19)).padding().font(.caption).frame(width: 300, alignment: .leading)
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


struct _bonerView: View {
    @State private var isPresented = false
    var body: some View {
        Button("5 böner"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: bonerModalView.init)

    }
}

struct _bonerView_Previews: PreviewProvider {
    static var previews: some View {
        _bonerView()
    }
}
