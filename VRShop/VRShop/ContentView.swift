//
//  ContentView.swift
//  VRShop
//
//  Created by yury mid on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        NavigationView{
            VStack {
                headerBlock
                titleBlock
                    .padding(.top, 30)
                
                VStack(spacing: 20) {
                    PagingView(index: $index.animation(), maxIndex: itemsData.count - 1) {
                        ForEach(itemsData, id: \.self) { item in
                            cardBlock(item: item)
                        }
                    }
                    .background(.ultraThinMaterial)
                    .aspectRatio(3/4, contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 35))
                    
                }
                .padding()
                Spacer()
            }
            .padding()
            .background(Color.bg)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var headerBlock: some View {
        HStack{
            Image(systemName: "line.3.horizontal")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .shadow(color: Color.black.opacity(0.5), radius: 5)
            Spacer()
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .shadow(color: Color.black.opacity(0.5), radius: 5)
                .foregroundColor(.accentColor)
        }
        .padding(.horizontal)
    }
    
    var titleBlock: some View {
        VStack{
            HStack{
                Image(systemName: "capsule")
                    .resizable()
                    .frame(width: 18, height: 13)
                    .shadow(color: Color.black.opacity(0.5), radius: 5)
                    .foregroundColor(.gray)
                Text("Oculus")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                Spacer()
            }.padding(0)
            
            HStack {
                Text("Play the next level of gaming")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .lineLimit(2)
                    .frame(maxWidth: 250)
                Spacer()
            }.padding(0)
            
            HStack{
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .shadow(color: Color.black.opacity(0.5), radius: 5)
                Text("Watch video")
                    .font(.subheadline)
                Spacer()
                    
            }.padding(0)
                
        }
        .padding(.horizontal)
    }
    
    
    func cardBlock(item: item) -> some View {
        VStack(alignment: .leading){
            Image(item.image)
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.subheadline)
                    .lineLimit(1)
            }
            .padding(.bottom,1)
            
            HStack {
                HStack{
                    Text(getSymbol(forCurrencyCode: "USD") ?? "")
                    Text(String(item.price))
                }
                .font(.largeTitle)
                .foregroundColor(.accentColor)
                .fontWeight(.semibold)
                
                Spacer()
                
                NavigationLink {
                    ItemView(someItem: item)
                } label: {
                    HStack{
                        Text("Show more")
                        Image(systemName: "chevron.right")
                    }
                    
                }
            }
            
        }
        .padding(.horizontal)
        .padding(.leading)
        .padding(.bottom,40)
    }
}
