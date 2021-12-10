//
//  ModalFastanView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct FastanModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            Spacer()
            Text("Ramandan är den heligaste månaden på året. På dagarna fastar muslimer från morgon till kväll. de rikare människorna ger till de drabbade i samhället. Ramadan avslutas med högtiden eid al-fitr som börjar dagen efter fastemånaden. Om du är sjuk, äldre, gravid, diabetiker eller menstruerar behöver du inte fasta.").font(.system(size: 19)).padding().font(.caption)
            Spacer()
            Text("X").font(.system(size: 39)).foregroundColor(.red)        .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkblue"))
        .edgesIgnoringSafeArea(.all)

    }
}


struct ModalFastanView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Fastan"){
            self.isPresented.toggle()
        }.frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: FastanModalView.init)

    }
}


struct ModalFastanView_Previews: PreviewProvider {
    static var previews: some View {
        ModalFastanView()
    }
}
