//
//  WashWuduView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct WashWuduView: View {
    var body: some View {
        
            ZStack {
                Image("background").resizable().imageScale(.medium).frame(minWidth: 0,
                                   maxWidth: .infinity,
                                   alignment: .topLeading)
                ScrollView {
                    WashTextView(text: "Niyyah, forma avsikten att rena dig själv i ditt hjärta. Gå till ett privat område för att utföra ritualen, om du kan. Hitta en källa med rent vatten du kan använda.")
                    WashTextView(text: "Säg \"bismillah\" högt för att påkalla Allahs namn.")
                    WashTextView(text: "Tvätta händerna till och med handlederna tre gånger")
                    WashTextView(text: "Använd din högra hand för att koppa lite vatten och skölj munnen tre gånger med det. Skölj vattnet ordentligt för att rengöra munnen och spotta ut det.")
                    WashTextView(text: "Skölj näsan tre gånger. Använd din högra hand, koppa vatten och andas in eller snusa det i näsan utan att ta in för mycket och få dig att kvävas. Använd din vänstra hand för att blåsa ut vattnet och upprepa denna process tre gånger.")
                    WashTextView(text: "Tvätta hela ansiktet med vatten. Koppa vatten i händerna och tvätta ansiktet med början med att pannan tar ner vattnet till din käklinje och avslutar vid hakan.")
                    WashTextView(text: "Tvätta armarna. Börja med att tvätta din högra arm först, från fingertopparna till strax ovanför armbågen. Hela armen ska vara våt och lämna inga torra delar. Upprepa detta tre gånger.")
                    WashTextView(text: "Rengör huvudet. Denna handling är känd som \"Masah\" för att rituellt rengöra huvudet med liten mängd vatten. Du vill blöta händerna och skaka bort överflödigt vatten. Torka sedan händerna genom håret framåt och bakåt, dvs från pannan till baksidan av huvudet, tillbaka till pannan.")
                    
                    WashTextView(text: "Tvätta fötterna. Börja tvätta din högra fot och täcka från tåspetsen till strax ovanför fotleden. Var noga med att tvätta hela foten och rengöra mellan tårna för att bli av med smuts som kan ha ansamlats. Upprepa detta tre gånger och gör sedan samma sak för din vänstra fot.")
                    
                    VStack {
                        VStack {
                            Text("SAMMANFATTNING AV WUDU-STEG:").padding()
                            Text("Här är en sammanfattning av stegen. Det är viktigt att dessa steg lagras i minnet och utförs i den här ordningen utan några långa pauser mellan varje steg.").padding().font(.caption)
                            
                        }
                        
                        Text("1 Börja med rätt niyyah (avsikt), säger Bismillah.").padding().font(.caption)
                        Text("2 Tvätta händerna tre gånger, börja med höger hand.").padding().font(.caption)
                        Text("3 Tvätta munnen tre gånger.").padding().font(.caption)
                        Text("4 Skölj näsan tre gånger.").padding().font(.caption)
                        Text("5 Tvätta ansiktet tre gånger.").padding().font(.caption)
                        Text("6 Tvätta armarna tre gånger, börja med höger arm från fingertopparna till strax ovanför armbågen.").padding().font(.caption)
                        Text("7 Torka av huvudet en gång och rengör öronen en gång.").padding().font(.caption)
                        Text("8 Tvätta fötterna tre gånger, börja med höger fot från tånagelspetsen till strax ovanför fotleden.").padding().font(.caption)
                        Image("wash")
                    }
                    
                }.navigationTitle("Wudu")
                .foregroundColor(.white)
                .frame(alignment: .leading)
                
            }
    }
}

struct WashWuduView_Previews: PreviewProvider {
    static var previews: some View {
        WashWuduView()
    }
}
