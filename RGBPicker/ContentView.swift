//
//  ContentView.swift
//  RGBPicker
//
//  Created by Jaswanth Alahari on 9/7/23.
//

import SwiftUI

struct ContentView: View {
  
  @State private var redSliderValue: Double = 100
  @State private var greenSliderValue: Double = 100
  @State private var blueSliderValue: Double = 100
  @State private var rectangleColor: Color = Color(red: 0/255, green: 0/255, blue: 255/255)
  
  var body: some View {
    VStack {
      Text("Color Picker")
        .font(.title)
      RoundedRectangle(cornerRadius: 0)
        .frame(width: 360, height: 360)
        .foregroundColor(rectangleColor)

      VStack {
        Text("Red")
        HStack {
          Slider(value: $redSliderValue, in: 0.0...255.0)
          let roundedValue = Int(redSliderValue.rounded())
          Text("\(roundedValue)")
        }.padding()
      }
      
      VStack {
        Text("Green")
        HStack {
          Slider(value: $greenSliderValue, in: 0.0...255.0)
          let roundedValue = Int(greenSliderValue.rounded())
          Text("\(roundedValue)")
        }.padding()
      }
      
      VStack {
        Text("Blue")
        HStack {
          Slider(value: $blueSliderValue, in: 0.0...255.0)
          let roundedValue = Int(blueSliderValue.rounded())
          Text("\(roundedValue)")
        }.padding()
      }
      
      Button("Set Color") {
        rectangleColor = Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
