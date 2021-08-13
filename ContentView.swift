//
//  ContentView.swift
//  Marvelous
//
//  Created by Kyohei Morinaka on 2021/08/08.
//

import SwiftUI
import MapKit




struct ContentView: View {
    @State var selectedTag = 1
    @State var largeHeader = true
    
    var body: some View {
        
        VStack {
                    Text("ここにロゴとバーを挿れる(笑）").padding(.vertical, largeHeader ? 10 : 10)
                    Divider()
        }
        TabView(selection: $selectedTag) {
            
            ShopTabView()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("探す")
                }.tag(1)
            
            FavTabView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("お気に入り")
                }.tag(2)
            
            NewsTabView()
                .tabItem {
                    Image(systemName: "network")
                    Text("トピック")
                }.tag(3)
            
            EventTabView()
                .tabItem {
                    Image(systemName: "bonjour")
                    Text("イベント")
                }.tag(4)
            
            MypageTabView()
                .tabItem {
                    Image(systemName: "person")
                    Text("マイページ")
                }.tag(5)
                
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ShopTabView()
        FavTabView()
        NewsTabView()
        EventTabView()
        MypageTabView()
    }
}
