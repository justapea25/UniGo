//
//  ContentView.swift
//  TeamProject
//
//  Created by Dau Hoang Minh on 10/7/2023.
//

import SwiftUI

struct Destination {
    var name: String
    var location: String
    var distance: Double
    var img_source: String
}
 
struct ContentView: View {
    let priColor = Color(red: 0.403921568627451, green: 0.23137254901960785, blue: 0.8901960784313725)
    
    var body: some View {
        let des1 = Destination(name: "Streat Cafe",location: "Bowen Street", distance: 0.1, img_source: "streat_cafe")
        let des2 = Destination(name: "Standing Room", location: "City", distance: 0.1, img_source: "standing_room")
        let des3 = Destination(name: "The Bean Project", location: "Bowen Street", distance: 0.2, img_source: "bean_project")
        
        let destinations : [Destination] = [des1, des2, des3]
        
        VStack {
            VStack {
                Section {
                    Text("Discover")
                        .font(.largeTitle)
                    Divider()
                        .overlay(.gray)

                    Text("What's near you")
                        .font(.title)
                        .foregroundColor(priColor)
                        .padding(.top, 10.0)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
     
                VStack {
                    
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
                                    .frame(width: 40, height: 40)
                                
                                VStack (alignment: .leading) {
                                    Text(destination.name)
                                    Text(destination.location)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                Text("\(destination.distance, specifier: "%.1f") KMS")
                                    .foregroundColor(.gray)
                                Image(systemName: "figure.walk")
                                    .foregroundColor(priColor)
                            }
                            .font(.system(size: 16))
                            
                            Divider()
                                .overlay(.gray)
                            
                        }
                        .padding(.bottom, 5.0)
                    }
                }
                .padding()
                .background(Color(red: 0.9647058823529412, green: 0.9647058823529412, blue: 0.9647058823529412))
                .cornerRadius(20)
                    
                
            }.padding(.bottom, 30.0)
            
            ZStack {
                VStack {
                    Image("study_room")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 350)
                        .clipped()
                        .cornerRadius(20)
                        .shadow(radius: 20)

                }

                
                VStack {
                    Spacer()
                    
                    Button(action: {
                    }) {
                        Text("BOOK A STUDY SPACE")
                            .font(.headline)
                            .foregroundColor(priColor)
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                    }.padding(.bottom, 20.0)
                    
                }
                

            }
        }
        .navigationTitle("Discover")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
