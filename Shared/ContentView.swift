//
//  ContentView.swift
//  Shared
//
//  Created by    CHIKA Ali on 13/03/2021.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @State private var centerCoordinate = CLLocationCoordinate2D()
    @State private var location = [MKPointAnnotation]()
    var body: some View {
        ZStack{
            MapView(centerCoordinate: $centerCoordinate, annotations: location).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Circle()
                .fill(Color.red)
                .opacity(0.3)
                .frame(width: 32, height: 32)
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        let newLocation = MKPointAnnotation()
                        newLocation.coordinate = self.centerCoordinate
                        self.location.append(newLocation)
                        
                        
                    }){
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(Color.black.opacity(0.75))
                    .foregroundColor(.white)
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
