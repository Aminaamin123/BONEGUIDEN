//
//  SuraView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct SuraView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().imageScale(.medium).frame(minWidth: 0,
                               maxWidth: .infinity,
                               alignment: .topLeading)
            ScrollView {
                Text("En surah är ett kapitel i islams heliga skrift, Koranen. Det finns 114 surahs, som varierar i längd från flera sidor till flera ord, omfattar en eller flera uppenbarelser mottagna av Muhammad från Allah. Här är några av de kortare att starta med:").padding()
                VStack{
                    SuraDisplayView(title: "al-fatihah", text: "Koranen:1")
                    SuraDisplayView(title: "al-Iklas", text: "Koranen:112")
                    SuraDisplayView(title: "al-falaqa", text: "Koranen:113")
                    SuraDisplayView(title: "al-nas", text: "Koranen:114")
                    
                    SuraDisplayView(title: "ayaat al-kursi", text: "Koranen:2:255")
                    
                    SuraDisplayView(title: "?", text: "Koranen:V:NR")
                    SuraDisplayView(title: "?", text: "Koranen:V:NR")
                }.frame(maxWidth: .infinity)
            }.foregroundColor(.white).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }.navigationTitle("Surah")
    }
}

struct SuraDisplayView: View {
    var title: String
    var text: String
    var body: some View {
        VStack {
            Text(title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width: 280,alignment: .leading)
            Text(text).frame(width: 280, alignment: .leading)
        }.frame(width: 300, alignment: .leading).padding().background(Color("darkblue")).cornerRadius(13.0)
    }
    
}

struct SuraView_Previews: PreviewProvider {
    static var previews: some View {
        SuraView()
    }
}
