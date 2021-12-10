//
//  AlWajibView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-25.
//

import SwiftUI

struct ModalAlWajibView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ScrollView{
            Text("1. Man måste be till Allah fem gångar om dagen. (Sammanlagt 25-30 minuter).. Man måste avhålla sig bl.a. från mat och dryck från soluppgången till solnedgången, en månad om året.. Man måste vallfärda till ka'ba i den heliga staden Makka (Mecka) i Saudi-Arabien en gång under sin livstid (Under förutsättning att man har ekonomisk och fysisk förmåga).. Man måste betala en viss summa av de tillgångar man har i vete, korn, dadlar, russin, guld- och silvermynt, kameler, kor, och får. (Summan av dessa olika sorters tillgångar varierar men en genomsnittlig siffra är ca. 2,5%).. Man måste betala en årlig skatt som består av 1/5 av det värde en mans egendom består av när man dragit av hans och familjens lagenliga utgifter.. Man måste försvara den islamiska nationen om en fiende anfaller.. Man skall använda lagenliga medel för att - i nämnd ordning - stimulera, uppmuntra och om nödvändigt, tvinga andra att leva dygdigt.. Man skall använda lagenliga medel för att - i nämnd ordning - stimulera, uppmuntra och om nödvändigt, tvinga andra att avhålla sig från felaktiga och dåliga handlingar.. Man måste vara lojal mot Gud sanna tjänare.. Man måste ta avstånd från Guds fiender..Dessa tio påbud betraktas som islams grenar (Furu' Al din). Det vi har tagit upp här är de viktigaste plikterna, men det finns många fler plikter och skyldigheter som en muslim ska uppfylla. Några av dem kommer att tas upp i nästa kapitel (Bl.a. mannens och kvinnans skyldigheter gentemot varandra, föräldrar och barn).").font(.system(size: 19)).padding().font(.caption)
        
            Text("X").font(.system(size: 39)).foregroundColor(.red)        .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .padding(.top, 50.0)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkblue"))
        .edgesIgnoringSafeArea(.all)

    }
}


struct AlWajibView: View {
    @State private var isPresented = false
    var body: some View {
        Button("Vad är det man måste göra (Al Wajib)?"){
            self.isPresented.toggle()
        }.frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color("darkblue")).cornerRadius(13.0).foregroundColor(.white).fullScreenCover(isPresented: $isPresented, content: ModalAlWajibView.init)

    }
}


struct AlWajibView_Previews: PreviewProvider {
    static var previews: some View {
        AlWajibView()
    }
}
