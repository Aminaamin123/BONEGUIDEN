//
//  StepDisplayView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-17.
//

import SwiftUI

struct StepDisplayView: View {
    var name : String
    var text : String
    var input: String = ""
    var trans : String

    var body: some View {
        VStack {
            if (input != ""){
                Text(input).font(.caption).padding().padding(.top, 10.0).foregroundColor(.white)
            }
                Text(name).padding().font(.headline)
                Text(text).padding().font(.headline)
                Text(trans).padding().font(.headline)
        }.foregroundColor(.white)
    }
}

struct StepDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        StepDisplayView(name: "String", text: "the text", trans: "trns")
    }
}
