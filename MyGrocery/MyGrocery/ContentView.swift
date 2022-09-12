//
//  ContentView.swift
//  test
//
//  Created by Fatma Alhaifi on 12/09/2022.
//
import SwiftUI

struct ContentView: View {
    @State var myGroceryItems = ["burger", "pancake", "pinapple", "popcorn", "sandwich", "waffle"]
    @State var name = ""
    var body: some View {
        VStack {
            List(myGroceryItems, id: \.self) { myGroceryItem in
                HStack {
                    Image(myGroceryItem)
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text(myGroceryItem) //List
                }
            }
            //action button
            HStack {
                Button(action: {
                    myGroceryItems.append(name)
                }) {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50 )
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .clipShape(Circle())
                }
                TextField("Add Item", text: $name)
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                Button(action: {
                    myGroceryItems.append(name)
                }) {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50 )
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .clipShape(Circle())
                }
                Button(action: {
                    myGroceryItems.append(myGroceryItems.randomElement() ?? "")
                }) {
                Image(systemName: "questionmark")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50 )
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .clipShape(Circle())
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
