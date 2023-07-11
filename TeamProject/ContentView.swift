//
//  ContentView.swift
//  TeamProject
//
//  Created by Dau Hoang Minh on 10/7/2023.
//

import SwiftUI

struct Destination {
    var name: String
    var distance: Double
    var img_source: String
}
 
struct ContentView: View {
    let priColor = Color(red: 0.06274509803921569, green: 0.8941176470588236, blue: 0.6941176470588235)
    
    var body: some View {
        let des1 = Destination(name: "Streat Cafe", distance: 0.1, img_source: "streat_cafe")
        let des2 = Destination(name: "Standing Room RMIT", distance: 0.1, img_source: "standing_room")
        let des3 = Destination(name: "The Bean Project", distance: 0.2, img_source: "bean_project")
        let des4 = Destination(name: "Mexicana", distance: 0.2, img_source: "streat_cafe")
        
        let destinations : [Destination] = [des1, des2, des3, des4]
        
        VStack {
            VStack {
                Section {
                    Text("Discover")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                        .frame(height: 1.5)
                        .overlay(priColor)
                }
                Section {
                    Text("What's near you")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(priColor)
                }
                .padding(.top, 50.0)
                
                ForEach(destinations, id: \.name) { destination in
                    Section {
                        HStack {
                            Image(destination.img_source)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .overlay {
                                    Circle().stroke(.gray)
                                }
                                .frame(width: 50, height: 50)

                            Text(destination.name)
                            
                            Spacer()
                            Text("\(destination.distance, specifier: "%.2f") KMS")
                            Image(systemName: "figure.walk")
                                .foregroundColor(priColor)
                        }
                        .font(.system(size: 16))
                        
                        Divider()
                            .overlay(priColor)
                        
                    }
                    .padding(.bottom, 10.0)
                }
                
                Spacer()
            }
            .padding()
            
            ZStack {
                Image("study_room")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                    }) {
                        Text("BOOK A STUDY SPACE")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .background(priColor)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                }
                

            }
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
