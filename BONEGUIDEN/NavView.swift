//
//  NavView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("hello next")
                    .navigationTitle("firstview")
            }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
