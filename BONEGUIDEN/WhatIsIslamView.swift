//
//  WhatIsIslamView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct WhatIsIslamView: View {
        var body: some View {
            ZStack {
                Image("background").resizable().imageScale(.medium)
                ScrollView {
                    WhatIsIslamDisplayView(text: "Ordet Islam betyder att uppnå fred - fred med Gud, fred i sig själv och fred med Guds skapelser - genom att helt underkasta sig sig för Gud och acceptera hans vägledning.")
                    WhatIsIslamDisplayView(text: "Uttrycket islam härstammar från den arabiska roten med tre bokstäver, S (س) - L (ل) - M (م), som genererar ord med sammanhängande betydelser, inklusive ”kapitulation”, ”underkastelse”, ”engagemang” och ”fred” . Vanligtvis hänvisar islam till den monoteistiska religionen som avslöjas för Muhammad ibn (son till) Abdullah mellan 610 och 632 av den gemensamma eran.")
                    WhatIsIslamDisplayView(text: "Namnet Islam inrättades av Koranen, den heliga skrift som uppenbarades för Muhammad. För troende är islam inte en ny religion. Snarare representerar den den sista upprepningen av det ursprungliga budskapet om Guds enhet, ett tema som hittades i tidigare monoteistiska religiösa traditioner.")
                    WhatIsIslamDisplayView(text: "Även om islam kan beskrivas som en religion, betraktas den av dess anhängare - en femtedel av världens befolkning - i mycket bredare termer. Utöver tron på specifika läror och utförande av viktiga rituella handlingar praktiseras islam som ett fullständigt och naturligt sätt att leva, utformat för att föra Gud in i centrum för sitt medvetande, och därmed ens liv. I grund och botten är islam per definition en världsbild som är inriktad på tron på den ende Gud och engagemang för hans bud.")
                    WhatIsIslamDisplayView(text: "Vad är essensen i islam?")
                    WhatIsIslamDisplayView(text: "Profeten Muhammad nämnde i en berättelse den bästa sammanfattningen av islams kärna enligt följande:")
                    WhatIsIslamDisplayView(text: "\"Underkastelse innebär att du ska vittna om att det inte finns någon gud utom Gud och att Muhammad är Guds budbärare, att du ska utföra den rituella bönen, betala allmoseskatten, snabbt under Ramadan och göra pilgrimsfärden till huset om du kan att åka dit.\"")
                    WhatIsIslamDisplayView(text: "\"Tro betyder att du har tro på Gud, hans änglar, hans böcker, hans budbärare och den sista dagen, och att du har tro på att mäta, både dess goda och dess onda.\"")
                    WhatIsIslamDisplayView(text: "\"Att göra det som är vackert betyder att du ska tillbe Gud som om du ser honom, för även om du inte ser honom ser han dig.\"")
                    Image("islamic-pray")
                }.navigationTitle("Vad är islam")
                .foregroundColor(.white)
                .font(.caption)
                .navigationBarItems(leading:
                                        Image("islamic-pray").resizable().frame(width: 50, height: 50))
            }
        }
}

struct WhatIsIslamDisplayView: View {
    var text: String
        var body: some View {
            Text(text).padding().font(.system(size: 19))
        }
}

struct WhatIsIslamView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsIslamView()
    }
}
