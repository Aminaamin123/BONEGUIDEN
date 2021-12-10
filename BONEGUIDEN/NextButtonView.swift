//
//  NextButtonView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct NextButtonView: View {
    var body: some View {
        VStack {
            Text("NEXT")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(width: 170)
                .padding()
                .background(Color("lightblue"))
                .cornerRadius(13)
                .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                .foregroundColor(.white)
                .font(.title3)
        }
        .padding(.bottom, 30.0)
    }
}

struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}
