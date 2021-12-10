//
//  SickView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct SickView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "Besöker gravarna", text: "Assalaamu 'alaykum 'ahlad-diyaari, minal-mu'mineena walmuslimeena, wa 'innaa 'in shaa' Allaahu bikum laahiqoona [wa yarhamullaahul-mustaqdimeena minnaa walmusta'khireena] 'as'alullaaha lanaa wa lakumul- 'aafiyata", translate: "Frid vare med er, människor i denna bostad, bland de troende och de som är muslimer, och vi, genom Allahs vilja, kommer att gå med i er. Må Allah ha nåd med den första av oss och den sista av oss) Jag ber Allah att ge oss och dig styrka.")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
        
    }
}

struct SickView_Previews: PreviewProvider {
    static var previews: some View {
        SickView()
    }
}
