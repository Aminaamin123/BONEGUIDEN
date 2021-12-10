//
//  TabBarView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selection: Int
    
    @Namespace private var currenTab
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs.indices){ index in
                
                GeometryReader { geometry in
                    VStack(spacing: 4){
                        
                        Image(tabs[index].image)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .rotationEffect(.degrees(0))
                        
                        Text(tabs[index].label)
                            .font(.caption2)
                            .fixedSize()
                        
                    }
                    .frame(width: geometry.size.width / 2, height: 52, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == index ? Color(.white) : .secondary)
                    .onTapGesture {
                        withAnimation{
                            selection = index
                        }
                    }
                }
                .frame(width: 68, height: 64, alignment: .bottom)
                .background(Color("lightblue"))
                .cornerRadius(13).padding(.horizontal, 5.0)
                .shadow(color: .gray, radius: 3, x: 0, y: 3)
            }
        }.padding(.bottom, 5.0)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}

struct Tab {
    let image: String
    let label: String
}

let tabs = [
    Tab(image: "islam", label: "HEM"),
    Tab(image: "praying", label: "BÖNEN"),
    Tab(image: "dua", label: "DUA"),
    Tab(image: "add", label: "APPAR")
]
