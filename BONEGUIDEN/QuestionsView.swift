//
//  QuestionsView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct QuestionsView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().imageScale(.medium)
            ScrollView {
                
                Text("\"Fråga mig vad som helst\" Tvecka inte att fråga en imam eller någon annan kunnig person inom islam, om det är något du undarar över. Det är en stor del av islam att lära ut & bli lärd.  ").padding([.top, .leading, .trailing])
                
                VStack{
                    BudskapView()
                    AlWajibView()
                    ma_nniskanView()
                    Va_rdeView()
                    Ra_ttigheterView()
                }
                
                
            }.navigationTitle("Vanliga frågor")
            .navigationBarItems(leading:
                                    Image("question").resizable().frame(width: 50, height: 50))
            .foregroundColor(.white)
        }
    }
}

struct OldView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().imageScale(.medium).frame(minWidth: 0,
                               maxWidth: .infinity,
                               alignment: .topLeading)
            ScrollView {
                VStack {
                    Text("\"Fråga mig vad som helst\" Tvecka inte att fråga en imam eller någon annan kunnig person inom islam, om det är något du undarar över. Det är en stor del av islam att lära ut & bli lärd.  ").padding(.all)
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .topLeading)
                
                
                QuestionsDisplayView(question: " Vem förmedlar budskapet efter profeten?", text: "Före sin död valde profeten, med gudomlig vägledning, ut tolv personer för att de skulle leda det islamiska samhället. De kallas imamer. Dessa imamer skulle förklara innehållet i budskapet för människorna. De skulle, med den kunskap de fått av profeten och gudomlig vägledning, visa människorna hur de skulle tillämpa de olika föreskrifterna och tolka olika lagar. Efter det att den tolfte imamen försvunnit är det meningen att folket för att förstå den islamiska synen på olika frågor, ska lita till de ibland dem som är mest bildade i religionen (Mujtahidin - plural av Mujtahid). Dessa Mujtahidin (de lärde) behövs huvudsakligen för att härleda och finna de religösa lösningarna i Koranen och Sunna (Vad profeten har sagt eller gjort) på dagliga frågor och problem. Ordet imam syftar inte alltid på de tolv imamerna Man kan säga imam om t.ex. den person som leder kollektiva böner. De tolv imamerna som profeten utsåg var: Ali, Hasan, Husayn, Zayn Al'Abidin, Al Bakir, Al Sadiq, Al Kazim, Al Rida, Al Taqi, Al Naqi, Al 'Askari och Al Mahdi.")
                QuestionsDisplayView(question: "Vad är det man måste göra (Al Wajib)?", text: "1. Man måste be till Allah fem gångar om dagen. (Sammanlagt 25-30 minuter).. Man måste avhålla sig bl.a. från mat och dryck från soluppgången till solnedgången, en månad om året.. Man måste vallfärda till ka'ba i den heliga staden Makka (Mecka) i Saudi-Arabien en gång under sin livstid (Under förutsättning att man har ekonomisk och fysisk förmåga).. Man måste betala en viss summa av de tillgångar man har i vete, korn, dadlar, russin, guld- och silvermynt, kameler, kor, och får. (Summan av dessa olika sorters tillgångar varierar men en genomsnittlig siffra är ca. 2,5%).. Man måste betala en årlig skatt som består av 1/5 av det värde en mans egendom består av när man dragit av hans och familjens lagenliga utgifter.. Man måste försvara den islamiska nationen om en fiende anfaller.. Man skall använda lagenliga medel för att - i nämnd ordning - stimulera, uppmuntra och om nödvändigt, tvinga andra att leva dygdigt.. Man skall använda lagenliga medel för att - i nämnd ordning - stimulera, uppmuntra och om nödvändigt, tvinga andra att avhålla sig från felaktiga och dåliga handlingar.. Man måste vara lojal mot Gud sanna tjänare.. Man måste ta avstånd från Guds fiender..Dessa tio påbud betraktas som islams grenar (Furu' Al din). Det vi har tagit upp här är de viktigaste plikterna, men det finns många fler plikter och skyldigheter som en muslim ska uppfylla. Några av dem kommer att tas upp i nästa kapitel (Bl.a. mannens och kvinnans skyldigheter gentemot varandra, föräldrar och barn).")
                QuestionsDisplayView(question: "Hur skapades människan?", text: "Människan skapades av jord, och Adam var den första människan på jorden. Han och hans hustru levde i paradiset innan de åt från ett förbjudet träd och sändes till jorden. Människan skapades som människa och har inte utvecklats från apor eller något annat djur.")
                QuestionsDisplayView(question: "Vad har människan för värde?", text: "Människan är den mest värdefulla varelse Gud skapat. Hela universum finns till för hennes skull. Den heliga Koranen säger att när Gud skapade Adam, beordrade Han alla änglar att falla på knä inför honom. Människan är den mest fulländade varelse som Gud skapat. Hon är den intelligentaste och den som är mest hedevärd av Gud. Det är människan som är förvaltare för Guds läror på jorden.")
                QuestionsDisplayView(question: "vilka är människans rättigheter?", text: "Människan har rätt till liv, fred, säkerhet, utveckling och sociala relationer som bygger på berättigande, respekt och rättvisa. Hon har rätt att skaffa sig kunskap, att välja vilket lagligt yrke hon önskar; att inneha egendom; att etablera en familj; att etablera eller vara medlem av ett politisk parti, en förening eller en församling. Människan har rätt att handla och uttrycka sig fritt när det t.ex. gäller att kritisera en regering eller opponera sig mot dess politik. (Men det innebär inte att hon har rätt att utsätta andra människor, den heliga läran, heliga platser, ritualer eller symboler, för fara, förstörelse eller förnedring. Hon får inte heller utsätta naturen med dess tillgångar eller andra människors egendomar för fara eller förstörelse. Hon får inte heller öppet handla i oppositioner till människornas sociala uppförande som det beskrivs i islam, t.ex. genom att framträda naken eller publicera pornografi).Vidare har människan rätt att välja en plats att leva på och hon har också rätt att sedan lämna den. Människan har rätt att följa sin övertygelse när det gäller ideologi eller teori. Ingen har rätt att tvinga på människan någon religion, lära, ideologi eller teori. Människan har rätt till ett tryggt liv, där ingen har rätt att tortera, förtrycka eller godtyckligt arrestera henne. Människan har rätt att behandlas som jämlike oavsett färg, ras, kön, nationalitet och språk. Den helige profeten sa:\" En arab har inget företräde framför en icke-arab. Och ingen icke-arab har något företräde framför en arab. Det finns inget företräde som en vit man har framför en svart man och inget företräde som en svart man har framför en vit man. Alla människor kommer av Adam och Adam skapades av jord\". Det finns tre sätt att inför Gud uppnå ett högre värde än andra: Tro, kunskap och uppoffring. Men dessa tre egenskaper är något som kan erhållas av alla människor, oavsett t.ex. ras eller kön som är något medfött.En människa har rätt till all livets nödtorft: Vatten, mat, värme, medicin, inkvartering etc.")
        
                
            }.navigationTitle("Vanliga frågor")
            .navigationBarItems(leading:
                                    Image("question").resizable().frame(width: 50, height: 50))
            .foregroundColor(.white)
            
        }
    }
}

struct QuestionsDisplayView: View {
    var question: String
    var text: String
    var body: some View {
        VStack{
            VStack {
                Text(question).font(.title2).padding([.top, .leading, .trailing])
                Text(text).padding()
            }
            .frame(width: 340)
            .background(Color("bluee"))
            .cornerRadius(13.0)
            .foregroundColor(.white)
            
        }
    }
    
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
