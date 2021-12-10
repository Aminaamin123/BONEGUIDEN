//
//  DuaSorryView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaSorryView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "Allahumma Inni As'aluka Al Afiyah", text: "Allahumma inni as'alukal 'afiah, athhibil bass, washfihi, la shifa'a illa shifaun. shifa alla yughadiru saqama", translate: "O Allah, jag ber dig om förlåtelse och välbefinnande i denna värld och i det följande."),
        ItemModal(title: "Rabbana Hablana Min Azwajina", text: "Alla humma inni asalukul jannah", translate: "O Allah, jag ber dig om paradiset")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
        
    }
}

struct DuaSorryView_Previews: PreviewProvider {
    static var previews: some View {
        DuaSorryView()
    }
}
