//
//  ListRowView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-17.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModal
    
    var body: some View {
        HStack {
            VStack {
                if(item.title != ""){
                    Text(item.title).font(.title2).padding(5.0)
                }
                Text(item.text).font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                
                Text("Översättning: ").font(.body).padding()
                
                Text(item.translate).font(.body)
                
            }.frame(width: 300.0, alignment: .center)
                .foregroundColor(.white)
            .padding()
        }.background(Color("darkblue"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.vertical, 8)
        .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModal(title: "", text: "Ya allah insmasakta nfsi faghfir laha, war in afsaltaha fahfazha bihif'zikal laazi tahfazuh bihi ibadaka-s-salihinn", translate: "if you take my soul forgive me ")
    static var item2 = ItemModal(title: "", text: "Ya allah insmasakta nfsi faghfir laha, war in afsaltaha fahfazha bihif'zikal laazi tahfazuh bihi ibadaka-s-salihinn", translate: "if you take my soul forgive me ")
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
