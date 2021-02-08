//
//  ContentView.swift
//  Fix
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI


struct Bot:View {
    @State var item = 0
    var body: some View{
        TabView(selection: $item){
            Vi().tabItem { VStack{
                Image("icc").resizable().frame(width: 20, height: 20, alignment: .center)
                Text("Главная").font(.custom("", size: 10))
            } }.tag(1)
            V1().tabItem { VStack{
                Image("iccc").resizable().frame(width: 20, height: 20, alignment: .center)
                Text("Каталог").font(.custom("", size: 10))
            } }.tag(1)
            V2().tabItem { VStack{
                Image("pi").resizable().frame(width: 20, height: 20, alignment: .center)
                Text("Магазины").font(.custom("", size: 10))
            } }.tag(1)
            ContentView().tabItem { VStack{
                Image("pr").resizable().frame(width: 20, height: 20, alignment: .center)
                Text("Профиль").font(.custom("", size: 10))
            } }.tag(1)
        }
    }
}

struct ContentView: View {
    @State var text = ""
    @State var pass = ""
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                    Color("gren")
               
                    HStack{
                    Image("arr").resizable().frame(width: 20, height: 20, alignment: .center)
                        Spacer()
                    }.padding()
                   
                    Text("Вход в личный кабинет").foregroundColor(.white).font(.custom("", size: 20)).padding()
                
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
                VStack(spacing: 50){
                VStack(spacing:20){
                    TextField("Номер телефона", text: $text).frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center)
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2)
                }
                    VStack(spacing:10){
                        HStack(spacing:0){
                        TextField("Пароль", text: $pass).frame(width: UIScreen.main.bounds.width-50, height: 1, alignment: .center)
                            Image("eye").resizable().frame(width: 20, height: 20, alignment: .center)
                        }
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 340, height: 80, alignment: .center).foregroundColor(Color("gren"))
                        Text("Войти").foregroundColor(.white).font(.custom("", size: 20))
                    }
                    Text("Забыли пароль?").foregroundColor(Color("bu")).offset( y: -20)
                }.offset( y: 40)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Bot()
    }
}


struct Vi:View {
    var body: some View{
        ZStack{
        Text("Главная")
        }
    }
}

struct V1:View {
    var body: some View{
        ZStack{
        Text("Каталог")
        }
    }
}


struct V2:View {
    var body: some View{
        ZStack{
        Text("Магазины")
        }
    }
}
