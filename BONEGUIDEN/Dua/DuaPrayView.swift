//
//  DuaPrayView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaPrayView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "Efter bönen", text: "Allahumma a'inni, ala dhikrika, wa shukrika, wa husni 'ibadatika", translate: "O Allah, hjälp mig att komma ihåg dig, tacka dig och utföra tillbedjan på bästa sätt."),
        ItemModal(title: "Förre bönen - Subhaanaka Allaahumma wa bihamdika, wa tabaarakasmuka", text: "Subhanaka allahumma wa bihamdika wa tabarakasmuka, wa ta'ala jadduka wa la ilaha ghairuk", translate: "Härlig är du O Allah, och med ditt beröm, och välsignat är ditt namn, och upphöjd är din majestät, och ingen har rätt att dyrkas utom dig."),
        ItemModal(title: "Synder", text: "Allaahumma baa'id baynee wa bayna khataayaaya kamaa baa'adta baynal-mashriqi walmaghribi, Allaahumma naqqinee min khataayaaya kamaa yunaqqath-thawbul-'abyadhu minad-danasi, Allaahum-maghsilnee min khataayaaya, bith-thalji walmaa'i walbarad.", translate: "O Allah, separera mig från mina synder eftersom du har separerat öst från väst. O Allah, rengör mig från mina överträdelser när det vita plagget rengörs från fläckar. O Allah, tvätta bort mina synder med is och vatten och frost.")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
        
    }
}

struct DuaPrayView_Previews: PreviewProvider {
    static var previews: some View {
        DuaPrayView()
    }
}
