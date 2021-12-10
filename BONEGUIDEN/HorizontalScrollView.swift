//
//  HorizontalScrollView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-19.
//

import SwiftUI

struct HorizontalScrollView: View {
    @State var items: [ItemPray] = [
        ItemPray(name: "Takbeer", text: "\"ALLAHU AKBAR\"", input: "Om du är en man, lyft armarna upp till ungefär öronlängd. Om du är en kvinna, höja armarna upp till ungefär axellängd.", trans: "Gud är störst", img: "takbeer"),
        ItemPray(name: "Qiyyam - Fatiha", text: "\"Bismillahi Rahmani Rahime, Alhamdou illahi rabi l’alamine, A rahmani rahime, Maliki yawmiddine, iyaka na’abodo wa iyaka nasta’ine, Indina siratal mostakime siratal ladina, Anamma ’alayhime, Rayi l’mardobi ’aleyhime wa la da line. Amine", input: "Lägg din högra hand över den vänstra", trans: "I guds namn, den nåderiga den bamhärtige, lov & pris tillkommer gud världarnas herre,den nåderrika den barmhärtiga,  härskare över domedagen, dig ensam dyrkar vi, dig ensam ber vi om hjälp, led oss på den raka vägen, den väg de vandrat som Du har välsignat med Dina gåvor, inte de som har drabbats av vrede och inte de som har gått vilse!\"",  img: "qiyyam"),
        ItemPray(name: "Qiyyam - Surah", text: "\"Qoul houwa’llahou ahad, Allahou samade, Lame valid wa lame youlad, wa lame yacoune lahou koufouane ahad\"", input: "Recitera sedan någon surah från koranen. Exempel Al-ikhlas:", trans: "String",  img: "qiyyam"),
        ItemPray(name: "Roukoue", text: " Subhanna rabbil-al-athemi, subhaana rabbi-al-athemi, subhaana rabbi-al-athem ", input: "Medan du bytar rörelse till Roukoue säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den mest stora",  img: "roukoue"),
        ItemPray(name: "Qiyyam", text: "\"Sami allahou liman hamidah rabbana wa laka-hamd\"", input: "", trans: "Må allah svara den som berömmer honom. Vår herre, för dig är allt beröm",  img: "qiyyam"),
        ItemPray(name: "Sujud", text: "\"Subhanna rabbi-al-ala, Subhanna rabbi-al-ala, Subhanna rabbi-al-ala \"", input: "Medan du bytar rörelse från Qiyyam till Sujud säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den högsta",  img: "sujud"),
        ItemPray(name: "Jalssa", text: "\"Allahu akbar\"", input: "Här är rom att säga rabbin arfhili x3 - vilket betyder gud förlåt mig", trans: "",  img: "jalssa"),
        ItemPray(name: "Sujud", text: "\"Subhanna rabbi-al-ala, Subhanna rabbi-al-ala, Subhanna rabbi-al-ala \"", input: "Medan du bytar rörelse från Qiyyam till Sujud säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den högsta",  img: "sujud"),
        ItemPray(name: "Qiyyam - Fatiha", text: "\"Bismillahi Rahmani Rahime, Alhamdou illahi rabi l’alamine, A rahmani rahime, Maliki yawmiddine, iyaka na’abodo wa iyaka nasta’ine, Indina siratal mostakime siratal ladina, Anamma ’alayhime, Rayi l’mardobi ’aleyhime wa la da line. Amine", input: "Medan du bytar rörelse från säger du \"ALLAHU AKBAR\"", trans: "I guds namn, den nåderiga den bamhärtige, lov & pris tillkommer gud världarnas herre,den nåderrika den barmhärtiga,  härskare över domedagen, dig ensam dyrkar vi, dig ensam ber vi om hjälp, led oss på den raka vägen, den väg de vandrat som Du har välsignat med Dina gåvor, inte de som har drabbats av vrede och inte de som har gått vilse!\"",  img: "qiyyam"),
        ItemPray(name: "Qiyyam - Surah", text: "\"\"", input: "Recitera sedan någon surah från koranen. Exempel Al-falaqa:", trans: "String",  img: "qiyyam"),
        ItemPray(name: "Roukoue", text: " Subhanna rabbil-al-athemi, subhaana rabbi-al-athemi, subhaana rabbi-al-athem ", input: "Medan du bytar rörelse till Roukoue säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den mest stora",  img: "roukoue"),
        ItemPray(name: "Qiyyam", text: "\"Sami allahou liman hamidah rabbana wa laka-hamd\"", input: "", trans: "Må allah svara den som berömmer honom. Vår herre, för dig är allt beröm",  img: "qiyyam"),
        ItemPray(name: "Sujud", text: "\"Subhanna rabbi-al-ala, Subhanna rabbi-al-ala, Subhanna rabbi-al-ala \"", input: "Medan du bytar rörelse från Qiyyam till Sujud säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den högsta",  img: "sujud"),
        ItemPray(name: "Jalssa", text: "\"Allahu akbar\"", input: "Här är rom att säga rabbin arfhili x3 - vilket betyder gud förlåt mig", trans: "",  img: "jalssa"),
        ItemPray(name: "Sujud", text: "\"Subhanna rabbi-al-ala, Subhanna rabbi-al-ala, Subhanna rabbi-al-ala \"", input: "Medan du bytar rörelse från Qiyyam till Sujud säger du \"ALLAHU AKBAR\"", trans: "Ära till min herre den högsta",  img: "sujud"),
        ItemPray(name: "Jalssa", text: "\"Allahu akbar\"", input: "", trans: "Gud är stor/störst",  img: "jalssa"),
        ItemPray(name: "Tachahoud", text: "\"At-thiyyatu lillahi wa 's-salawatu wa 't-tayyibatu as-salamu 'alayka ayyuha'n-nabiyyu wa rahmatullahi wa barakatuh as-salamu 'alayna wa ala ibadillahi's-saliheen ashadu an la ilaha illa allah wa ashhadu anna muhammadan 'abduhu wa rasuluh. \"", input: "", trans: "Alla välsignelser, böner och goda gärningar är till Allah. Frid vare med dig, Profeten och Allahs bärmhärtighet och hans välsignelser. Fred för oss och för Allahs rättfärdiga tjänare. Jag vittnar om att ingen utom Allah är värd att dyrka och jag vittnar om att Muhammad är hans tjänare och budbärare.",  img: "tachahoud"),
        ItemPray(name: "Salam", text: "\"Aa salam alaykum wa rahmatullahi wa barakatuhu. Aa salam alaykum wa rahmatullahi wa barakatuhu\"", input: "När du säger den meningen kollar du till höger.", trans: "Gud är stor/störst",  img: "jalssa"),
        ItemPray(name: "Salam", text: "\"Aa salam alaykum wa rahmatullahi wa barakatuhu. Aa salam alaykum wa rahmatullahi wa barakatuhu\"", input: "Här vänder du dig till vänser och upprepar meningen.", trans: "Gud är stor/störst",  img: "jalssa")
        
    ]
    @State var backgrundOffset : CGFloat = 0
    var body: some View {
        GeometryReader{ g in
            HStack(spacing: 0){
                
                ForEach(items) { item in
                    VStack{
                        VStack {
                            Image(item.img).resizable().frame(width: 140, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }.frame(width: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 50.0)
                        Text("").frame(height: 50)
                        ScrollView{
                            StepDisplayView(name: item.name, text: item.text, input: item.input, trans: item.trans)
                            Image("").frame(width: 30, height: 100)
                        }.frame(maxHeight: .infinity)
                        .padding()
                        Text("").frame(height: 50)
                    }
                }
                    .frame(width:g.size.width, height: g.size.height)
            }
            .offset(x: -(self.backgrundOffset * g.size.width))
            .animation(.default)
            
            ZStack{
                Rectangle()
                    .fill(Color.clear)
                    .frame(width:g.size.width, height: 40)
                
                HStack{
                    
                    ForEach(0 ..< items.count, id: \.self) {value in
                        Circle()
                            .fill(Color("lightblue"))
                            .frame(width: self.backgrundOffset == CGFloat(value) ? 10 : 5, height: self.backgrundOffset == CGFloat(value) ? 10 : 5)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            ).padding(.trailing, 1.0)
                    }
                    
                }
                .animation(.default)
                
            }.position(x: g.size.width/2, y:g.size.height/2.5)
             
        }
        
        .gesture(
            DragGesture()
                .onEnded({ value in

                    if value.translation.width > 5 {
                        if self.backgrundOffset > 0 {
                        self.backgrundOffset -= 1
                        }

                    }else if value.translation.width < -5 {
                        if self.backgrundOffset < CGFloat(items.count - 1) {
                        self.backgrundOffset += 1
                        }
                    }
                })
        )
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
