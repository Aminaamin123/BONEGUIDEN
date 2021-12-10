//
//  DuaFamilyView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaFamilyView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "", text: "Rabbana hablana, min azwajina wa, dhuriyyatina qurrata, a'yunin, waj'alna, lil muttaqina imama", translate: "Vår Herre! Ge oss hustrur och avkommor som kommer att vara tröst för våra ögon och ge oss (nåd) att leda de rättfärdiga.")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
        
    }
}

struct DuaFamilyView_Previews: PreviewProvider {
    static var previews: some View {
        DuaFamilyView()
    }
}
