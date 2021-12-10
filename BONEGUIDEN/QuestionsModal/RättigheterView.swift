//
//  RättigheterView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-25.
//

import SwiftUI

struct ModalRa_ttigheterView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ScrollView{
            Text("Människan har rätt till liv, fred, säkerhet, utveckling och sociala relationer som bygger på berättigande, respekt och rättvisa. Hon har rätt att skaffa sig kunskap, att välja vilket lagligt yrke hon önskar; att inneha egendom; att etablera en familj; att etablera eller vara medlem av ett politisk parti, en förening eller en församling. Människan har rätt att handla och uttrycka sig fritt när det t.ex. gäller att kritisera en regering eller opponera sig mot dess politik. (Men det innebär inte att hon har rätt att utsätta andra människor, den heliga läran, heliga platser, ritualer eller symboler, för fara, förstörelse eller förnedring. Hon får inte heller utsätta naturen med dess tillgångar eller andra människors egendomar för fara eller förstörelse. Hon får inte heller öppet handla i oppositioner till människornas sociala uppförande som det beskrivs i islam, t.ex. genom att framträda naken eller publicera pornografi).Vidare har människan rätt att välja en plats att leva på och hon har också rätt att sedan lämna den. Människan har rätt att följa sin övertygelse när det gäller ideologi eller teori. Ingen har rätt att tvinga på människan någon religion, lära, ideologi eller teori. Människan har rätt till ett tryggt liv, där ingen har rätt att tortera, förtrycka eller godtyckligt arrestera henne. Människan har rätt att behandlas som jämlike oavsett färg, ras, kön, nationalitet och språk. Den helige profeten sa:\" En arab har inget företräde framför en icke-arab. Och ingen icke-arab har något företräde framför en arab. Det finns inget företräde som en vit man har framför en svart man och inget företräde som en svart man har framför en vit man. Alla människor kommer av Adam och Adam skapades av jord\". Det finns tre sätt att inför Gud uppnå ett högre värde än andra: Tro, kunskap och uppoffring. Men dessa tre egenskaper är något som kan erhållas av alla människor, oavsett t.ex. ras eller kön som är något medfött.En människa har rätt till all livets nödtorft: Vatten, mat, värme, medicin, inkvartering etc.").font(.system(size: 19)).padding().font(.caption)
        
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


struct Ra_ttigheterView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Vilka är människans rättigheter?"){
            self.isPresented.toggle()
        }.frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: ModalRa_ttigheterView.init)

    }
}
struct Ra_ttigheterView_Previews: PreviewProvider {
    static var previews: some View {
        Ra_ttigheterView()
    }
}
