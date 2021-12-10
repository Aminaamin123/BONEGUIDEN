//
//  DuaOutsideView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaOutsideView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "Kommer in i köpcentrum eller butik", text: "Laa ilaaha ill-allahu wahdahu laa shareeka lahu, lahu'l-mulku wa lahu'l-hamdu, yuhyi wa yumeet wa huwa hayyun la yamoot, bi yadihi'l-khayr, wa huwa 'ala kulli shay'in qadeer", translate: "Det finns ingen som är värdig att dyrka utom Allah som inte har några partners, ty Honom är herraväldet, och för honom är allt beröm, han ger liv och han orsakar döden, och han lever och dör inte, i hans hand är allt gott, och han kan allt"),
        ItemModal(title: "Innan man går ut", text: "Bismillahi tawakkaltu alallahi la hawla wala quwwata illa billah", translate: "I guds namn, jag litar på allah, det finns ingen makt eller kraft utom i allah")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
        
    }
}

struct DuaOutsideView_Previews: PreviewProvider {
    static var previews: some View {
        DuaOutsideView()
    }
}
