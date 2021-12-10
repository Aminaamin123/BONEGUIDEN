//
//  DuaSleep.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaSleep: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "Innan sömn", text: "Bismika rabbi wada'tu janbi, wa bika arfa'hu. In nafsi faghfir laha, wa in arsaltaha fahfaz tahfaz bihi 'ibadaka-s-salihin", translate: "Med ditt namn, min herre, lägger jag mig ner och med ditt namn stiger jag upp, och om min själ tar du förlåt det, och om du skickar det tillbaka, skydda det, som du skyddar dina rättfärdiga slavar.")
    ]
    
    var body: some View {
        ForEach(items){ item in
            ListRowView(item: item)
        }.background(Color.clear)
        
    }
}

struct DuaSleep_Previews: PreviewProvider {
    static var previews: some View {
        DuaSleep()
    }
}
