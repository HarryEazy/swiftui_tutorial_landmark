//
//  ContentView.swift
//  landsmarks_apple_tutorial
//
//  Created by Harry Camps on 12/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
            //  When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
                .frame( height: 300)
            //  To allow the map content to extend to the top edge of the screen, add the ignoresSafeArea(edges: .top) modifier to the map view.
                .ignoresSafeArea(edges: .top)
            
            
            //  To layer the image view on top of the map view, give the image an offset of -130 points vertically, and padding of -130 points from the bottom of the view.
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.ultraLight)
                
                HStack {
                    Text("Josuah Tree National Park")
                    //  A spacer expands to make its containing view use all of the                               space of its parent view, instead of having its size                                      defined only by its contents.
                    Spacer()
                    Text("California")
                        
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                // Add a divider and some additional descriptive text for the landmark.
                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            
            
            .padding()
            // push vstack to top
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
