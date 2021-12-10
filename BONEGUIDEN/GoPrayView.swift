//
//  GoPrayView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct GoPrayView: View {
    var body: some View {
        VStack{
            Image("praying").resizable().frame(width: 30, height: 30)
            Text("Påbörja bönen")
                .foregroundColor(.white)
        }
        .padding()
        .background(Color("darkblue"))
        .cornerRadius(13)
        .padding(.horizontal, 33.0)
        .padding(.top, 10)
        .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
    }
}

struct GoPrayView_Previews: PreviewProvider {
    static var previews: some View {
        GoPrayView()
    }
}
