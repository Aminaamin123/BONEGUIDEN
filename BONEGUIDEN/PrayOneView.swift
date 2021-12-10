//
//  PrayOneView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-17.
//

import SwiftUI

struct PrayOneView: View {
    var body: some View {
        VStack {
            Text("Step one prayer")
            NavigationLink(
                destination: Text("Step 2)"),
                label: {
                    Text("Next (step 2)")
                })
        }

    }
}

struct PrayOneView_Previews: PreviewProvider {
    static var previews: some View {
        PrayOneView()
    }
}
