//
//  OptionsView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-14.
//

import SwiftUI

struct OptionsView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            HStack {
                
                NavigationLink(
                    destination: BookTipsView(),
                    label: {
                        Text("Bok tips")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 88.0, height: 100.0)
                        .background(Color("darkblue"))
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                        .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                    })
                
                NavigationLink(
                    destination: WhatIsIslamView(),
                    label: {
                        Text("Vad är islam")
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 88.0, height: 100.0)
                            .background(Color("darkblue"))
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                            .padding(.top, 40.0)
                            .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                    })

                NavigationLink(
                    destination: KnowledgeView(),
                    label: {
                        Text("Bra att veta")
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 88.0, height: 100.0)
                            .background(Color("darkblue"))
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                            .padding(.top, 40.0)
                            .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                    })
                
                NavigationLink(
                    destination: QuestionsView(),
                    label: {
                        Text("Vanliga frågor")
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 88.0, height: 100.0)
                            .background(Color("darkblue"))
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                            .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                    })

            }
            
        }
    }
}


struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
