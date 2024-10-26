//
//  SwiftUIView.swift
//  Valent
//
//  Created by valent on 26/10/24.
//

import SwiftUI


struct SwiftUIView: View {
    var body: some View{
        
        ZStack
        {
            Rectangle().foregroundColor(.indigo).frame(maxWidth: 440,maxHeight: 370).cornerRadius(15)
            
            Circle().padding().foregroundColor(.mint).frame(maxWidth: 200, maxHeight: 200).shadow(radius: 5).offset(y:130)
            
            Text("🤷🏻‍♂️").font(.system(size: 120)).offset(y:130)
        }.offset(y:-120)
        
        Section
        {
            VStack(spacing: 9){
                Text("@ValentRafael").foregroundColor(.gray)
                Text("Valent Rafael Somangkey").font(.title).bold()
                HStack(alignment: .center){
                    Text("Makassar").foregroundColor(.blue)
                    Text("|").foregroundColor(.gray)
                    Text("28 August 2004").foregroundColor(.gray)
                }
            }
            
            HStack
            {
                Button(action:{
                }){
                    Text("👁️‍🗨️ Follow").padding(7).cornerRadius(10).background(.clear).clipShape(.capsule).foregroundStyle(.black).bold().overlay(Capsule().stroke(Color.black))
                }
                
                Button(action:{
                }){
                    Text("✉️ Message").padding(7).cornerRadius(10).background(.clear).clipShape(.capsule).foregroundStyle(.black).bold().overlay(Capsule().stroke(Color.black))
                }
                
                Button(action:{
                }){
                    Text("⚅ More").padding(7).cornerRadius(10).background(.clear).clipShape(.capsule).foregroundStyle(.black).bold().overlay(Capsule().stroke(Color.black))
                }
            }
            Text("Im a Professional designer from UC")
            Text("Ding dong eat it up, hello wassup")
        }.offset(y:-50)
        Divider().offset(y:-40)
        
        Section
        {
            VStack(spacing: 9)
            {
                HStack
                {
                    Text("Information").font(.title).bold()
                    Spacer()
                }
                HStack
                {
                    Text("⚬ Website").font(.title3).foregroundColor(.gray)
                    Spacer()
                    Text("www.PDDSuwangar.com").foregroundColor(.black)
                }
                HStack
                {
                    Text("✑ Email").font(.title3).foregroundColor(.gray)
                    Spacer()
                    Text("Valentsomangkey@gmail.com").foregroundColor(.black)
                }
                HStack
                {
                    Text("☊ Phone").font(.title3).foregroundColor(.gray)
                    Spacer()
                    Text("0821 9484 0968")
                }
                HStack
                {
                    Text("⛳︎ Joined").font(.title3).foregroundColor(.gray)
                    Spacer()
                    Text("a month ago")
                }
            }
            
        }.padding().offset(y:-40)
        
        Divider().offset(y:-40)
        
        VStack(alignment: .leading)
        {
            HStack
            {
                Button(action:{
                }){
                    Text("Designer").padding(7).cornerRadius(10).background(.clear).foregroundStyle(.black).bold().overlay(Rectangle().stroke(Color.black))
                }
                Button(action:{
                }){
                    Text("Photographer").padding(7).cornerRadius(10).background(.clear).foregroundStyle(.black).bold().overlay(Rectangle().stroke(Color.black))
                }
                Button(action:{
                }){
                    Text("UI UX").padding(7).cornerRadius(10).background(.clear).foregroundStyle(.black).bold().overlay(Rectangle().stroke(Color.black))
                }
                Button(action:{
                }){
                    Text("Spender").padding(7).cornerRadius(10).background(.clear).foregroundStyle(.black).bold().overlay(Rectangle().stroke(Color.black))
                }
            }
            HStack{
                Button(action:{
                }){
                    Text("Car Enthusiast").padding(7).cornerRadius(10).background(.clear).foregroundStyle(.black).bold().overlay(Rectangle().stroke(Color.black))
                }
            }
        }.offset(y:-20)
        
    }
}
#Preview {
    SwiftUIView()
}

