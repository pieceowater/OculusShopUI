//
//  ItemView.swift
//  VRShop
//
//  Created by yury mid on 26.10.2022.
//

import SwiftUI

struct ItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var someItem: item
        
    var body: some View {
        ScrollView{
            VStack{
                imageBlock(image: someItem.image)
                contentBlock(title: someItem.name, description: someItem.description)
                Button {
                    print("HW1")
                } label: {
                    priceCardBlock(price: someItem.price, count: 1, discount: 0)
                }
                Button {
                    print("HW2")
                } label: {
                    priceCardBlock(price: someItem.price, count: 2, discount: 15)
                }
                Button {
                    print("HW3")
                } label: {
                    priceCardBlock(price: someItem.price, count: 10, discount: 50)
                }
                Spacer(minLength: 100)
            }
            .padding()
        }
        .overlay(alignment: .bottom) {
            ZStack{
                addButtonBlock
                    .offset(y: -28)
            }
            .frame(maxHeight: 45)
            .background(.ultraThinMaterial)
            
        }
        .ignoresSafeArea()
        .background(Color.bg)
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(someItem: item(name: "Sample", image: "Subject1", price: 100, description: "Some text like lorem ipsum"))
    }
}

extension ItemView {
    func imageBlock(image: String) -> some View {
        HStack{
            Image(image)
                .resizable()
                .scaledToFit()
        }
    }
    func contentBlock(title: String, description: String) -> some View {
        VStack (alignment: .leading){
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                
            }
            .padding(.bottom,1)
            
            Text(description)
                .font(.subheadline)
            
        }
        .padding(.bottom)
    }
    func priceCardBlock(price:Int, count:Int, discount:Int) -> some View {
        HStack{
            Text("\(String(count)) PC")
            Spacer()
            HStack{
                if (discount != 0 ){
                    Text("-\(String(discount))%")
                        .foregroundColor(Color.accentColor)
                        .fontWeight(.semibold)
                        .font(.headline)
                }
                Text(getSymbol(forCurrencyCode: "USD") ?? "")
                Text(String(
                    (price * count) - (((price * count) * discount) / 100)
                ))
            }
            .font(.title2)
        }
        .foregroundColor(Color.readable)
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(15)
        .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.accentColor, lineWidth: 2)
            )
        .padding(1)
    }
    
    var addButtonBlock: some View {
        Button {
            print("HW")
        } label: {
            ZStack{
                Text("Add to Cart")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 30)
            .padding()
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(50)
            .padding(8)
        }

    }
}
