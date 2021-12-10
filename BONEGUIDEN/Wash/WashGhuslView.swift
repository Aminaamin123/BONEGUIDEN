//
//  WashGhuslView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct WashGhuslView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().imageScale(.medium).frame(minWidth: 0,
                               maxWidth: .infinity,
                               alignment: .topLeading)
            ScrollView {
                WashTextView(text: "Niyyah, forma avsikten att rena dig själv i ditt hjärta. Gå till ett privat område för att utföra ritualen, om du kan. Hitta en källa med rent vatten du kan använda.")
                WashTextView(text: "Säg \"bismillah\" högt för att påkalla Allahs namn.")
                WashTextView(text: "Tvätta händerna till och med handlederna först.")
                WashTextView(text: " Fortsätt att tvätta dina privata delar och eventuella förorenade områden.")
                WashTextView(text: "Gör ditt huvud, ansikte och nacke med vatten 3 gånger.")
                WashTextView(text: "Tvätta hela din högra sida av kroppen nästa, från axel till fot.")
                WashTextView(text: "Upprepa denna process på vänster sida av kroppen.")
                WashTextView(text: "Torka av dig med en ren handduk, om så önskas, och klä dig på.")
                
                Text( "Överväg även att utföra ghusl i situationer där det bara föredras. Det finns vissa situationer där ghusl inte strikt krävs, men rekommenderas i allmänhet. Några situationer där ghusl rekommenderas är: 1 När en icke-muslim har konverterat till islam. 2 Innan du börjar fredagsböner. 3 Innan Eid-böner inleds. 4 Efter att ha tvättat ett lik. 5 Innan en pilgrimsfärd till Mecka.").font(.caption).padding()
                
                Image("wash")
                
            }.navigationTitle("Gushl")
            .foregroundColor(.white)
            .frame(alignment: .leading)
            
        }
    }
}

struct WashTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .frame(width: 340, alignment: .leading)
            .multilineTextAlignment(.leading)
            .padding()
            .foregroundColor(.white)
            .font(.body)
            
    }
}

struct WashGhuslView_Previews: PreviewProvider {
    static var previews: some View {
        WashGhuslView()
    }
}
