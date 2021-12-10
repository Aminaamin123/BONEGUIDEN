//
//  BookTipsView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-18.
//

import SwiftUI

struct BookTipsView: View {
    var body: some View {
        
        ZStack {
            Image("background").resizable().imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
            ScrollView {
                
                Text("Genom att lära dig mer kommer du att skapa ett enklare val för dig själv. Du kommer att ha förståelse och inte behöva undra eller känna tvivel. Klicka på en bok du vill se mer detaljer om.").padding([.top, .leading, .trailing])
                
                
                    
                HStack {
                    BokTipsDisplayView(name: "The Prophet", link: "https://www.nextory.se/bok/the-prophet-10455149/?utm_source=adwords&utm_medium=search&utm_campaign=s_titles_180001-200000&utm_content=10455149&gclid=Cj0KCQjw_8mHBhClARIsABfFgpjzwNvmW-wEGNbEYuH5JtlEq1yaE1MfBn-Ys65n3N90ae0lC-jXaBcaAilaEALw_wcB" )
                    BokTipsDisplayView(name: "The Noble Quran", link: "https://quran.com/")
                }
                        
                        
                        
                HStack {
                    BokTipsDisplayView(name: "The Story of the Qur'an.", link: "https://www.perlego.com/book/1003853/the-story-of-the-quran-its-history-and-place-in-muslim-life-pdf?utm_source=google&utm_medium=cpc&gclid=Cj0KCQjw_8mHBhClARIsABfFgphiG_wfq8vsBT0G1V78q0hLxr9jFuo")
                    BokTipsDisplayView(name: "Islam: A Short History", link: "https://www.nextory.se/bok/islam-a-short-history-10605418/?utm_source=adwords&utm_medium=search&utm_campaign=s_titles_340001-360000&utm_content=10605418&gclid=Cj0KCQjw_8mHBhClARIsABfFgpgpdgMvbONkKcsk0JijkvIF6KmSgBVr01diCBIotXrTiJtatGPz-7MaAmtBEALw_wcB")
                }
                        
                        

                HStack {
                    BokTipsDisplayView(name: "Arabic Course 3 Volume", link: "https://www.akhira.se/sv/bocker/ovriga-bocker/arabic-course-3-volume-complete-set.html")
                    
                    BokTipsDisplayView(name: "What Everyone Needs to Know about Islam", link: "https://www.bokus.com/bok/9780198035701/what-everyone-needs-to-know-about-islam/")
                }
                HStack {
                    BokTipsDisplayView(name: "Profeten Muhammad", link: "https://www.tahara.se/nyheter/profeten-muhammad-hans-liv-och-garning")
                    
                    BokTipsDisplayView(name: "Guiden för dig som ny i islam", link: "https://www.tahara.se/bocker/guiden-for-dig-som-ny-i-islam")
                }
                   
                Spacer()
            }.navigationTitle("Bok tips")
            .navigationBarItems(leading:
                                    Image("open-book1").resizable().frame(width: 50, height: 50)
            ).foregroundColor(.white)
            
        }
    }
}

struct BookTipsView_Previews: PreviewProvider {
    static var previews: some View {
        BookTipsView()
    }
}

struct BokTipsDisplayView: View {
    var name: String
    var link: String
    var body: some View {
        VStack{
            NavigationLink(
                destination: Webview(url: link),
                label: {
                    ZStack {
                        //Image("openbook")
                        Text(name)
                            .foregroundColor(Color("darkblue"))
                            .font(.caption)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Image("thebook")
                                                .resizable().frame(width: 150, height: 120))
                    }.padding(2.0)
                })
        }.padding(30.0).background(Color(.clear))
    }
}
