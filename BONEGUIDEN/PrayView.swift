//
//  PrayView.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-16.
//

import SwiftUI

struct StepModalView: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Image("background").resizable()
            VStack {
                VStack {
                    Image("back")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .leading)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                    }
                }.padding(.top, 50.0).frame(width: 350, alignment: .leading)
                HorizontalScrollView()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct PrayView: View {
    @State private var isPresented = false
    var body: some View {
            VStack {
                VStack {
                    Text("BÖNEN").fontWeight(.semibold).foregroundColor(Color.white).font(.largeTitle)
                }
                
                Text("Bönen består av olika delar. Man börjar med tvätt (wudu, ghusl) sedan utför man bönen och i bönen reciterar man utdrag (surah) från koranen. I exemplet utförs en bön med 2 raka")
                    .foregroundColor(.white)
                    .padding([.top, .leading, .trailing])
                    .frame(width: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                VStack {
                    HStack {
                        NavigationLink(
                            destination: WashView(),
                            label: {
                                VStack {
                                    Image("wash").resizable().frame(width: 30, height: 30)
                                    Text("Tvätt")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color("darkblue"))
                                .cornerRadius(13).padding(.horizontal, 5.0)
                                .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                            })
                        
                        NavigationLink(
                            destination: SuraView(),
                            label: {
                                VStack{
                                    Image("quran").resizable().frame(width: 30, height: 30)
                                    Text("Enkla surah att börja med").frame(width: 120, height: 50, alignment: .center)
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color("darkblue"))
                                .cornerRadius(13).padding(.horizontal, 5.0)
                                .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                            })
                    }
                    
                    NavigationLink(
                        destination: KnowledgeView(),
                        label: {
                            VStack{
                                Image("search").resizable().frame(width: 30, height: 30)
                                Text("Bra att veta")
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(Color("darkblue"))
                            .cornerRadius(13).padding(.trailing, 50.0)
                            .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                        })
                    
                    //NavigationLink(
                      //  destination: HorizontalScrollView(),
                        //label: {
                          //  GoPrayView()
                        //})
                    
                    VStack {
                        Image("praying").resizable().frame(width: 30, height: 30)
                        Button("På börja bönen"){
                            self.isPresented.toggle()
                        }.fullScreenCover(isPresented: $isPresented, content: StepModalView.init)
                    }.background(Color("darkblue")).foregroundColor(.white).padding()
                    .background(Color("darkblue"))
                    .cornerRadius(13).padding(.trailing, 50.0)
                    .shadow(color: Color("darkblue"), radius: 5, x: 0, y: 5)
                    
                    
                    
                }
                
                Spacer()
                
            }.padding(.top, 40.0).padding(.bottom, 15.0).frame(width: 360)
    }
}

struct PrayView_Previews: PreviewProvider {
    static var previews: some View {
        PrayView()
    }
}
