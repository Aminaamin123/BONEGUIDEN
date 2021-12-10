//
//  DuaAllahView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct DuaAllahView: View {
    @State var items: [ItemModal] = [
        ItemModal(title: "För att söka vägledning för att fatta ett beslut", text: "Allaahumma 'innee 'astakheeruka bi'ilmika, wa 'astaqdiruka biqudratika, wa 'as'aluka min fadhtikal-'Adheemi, fa'innaka taqdiru wa laa 'aqdiru, wa ta'lamu, wa laa 'a'lamu, wa 'Anta 'Allaamul-Ghuyoobi, Allaahumma 'in kunta ta'lamu 'anna haathal-'amra-(then mention the thing to be decided) Khayrun lee fee deenee wa ma'aashee wa 'aaqibati 'amree, faqdurhu lee wa yassirhu lee thumma baarik lee feehi, wa 'in kunta ta'lamu 'anna haathal-'amra sharrun lee fee deenee wa ma'aashee wa 'aaqibati 'amree, fasrifhu 'annee wasrifnee 'anhu waqdur liyal-khayra haythu kaana thumma 'ardhinee bihi.", translate: "O Allah, jag söker råd från din kunskap, och jag söker hjälp av din allmakt, och jag ber dig om din magnifika nåd. Visst, du är kapabel och jag inte. Du vet och jag vet inte, och du är den okända. O Allah, om du vet att denna fråga (nämn saken) är bra för mig i min religion och i mitt liv och för min välfärd i det liv som kommer på både kort och lång sikt, så ordna det för mig och gör det lätt för mig, välsigna mig därefter. Och om du vet att den här saken är dålig för mig i min religion och i mitt liv och för min välfärd i det liv som kommer både på kort och lång sikt, avlägsna den från mig och distansera mig från den, och ordna för mig vad som är bra vart det än är, och hjälp mig att vara nöjd med det.")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(items){ item in
                ListRowView(item: item)
            }.background(Color.clear)
        }
    }
}

struct DuaAllahView_Previews: PreviewProvider {
    static var previews: some View {
        DuaAllahView()
    }
}
