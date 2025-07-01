//
//  LayoutView.swift
//  2025.06.30
//
//  Created by 최용헌 on 6/30/25.
//

import SwiftUI

struct LayoutView: View {
  @State var rotation: Double = 0.0
  @State var isEditing: Bool = false
  @State private var text: String = "hi"
  
  var colors: [Color] = [.black, .red, .green, .yellow]
  var colorNames = ["Black", "Red", "Green", "Yellow"]
  
  @State private var colorIndex: Int = 0
  
  
  var body: some View {
    NavigationStack {
      
      VStack() {
          Text("Hello")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .rotationEffect(.degrees(rotation))
            .animation(.easeInOut(duration: 5), value: rotation)
            .foregroundStyle(colors[colorIndex])
            .background(Color.blue)
        
        
        Divider()
        
        Slider(value: $rotation, in: 0...100, step: 5) {
          Text("Speed")
        } minimumValueLabel: {
          Text("0")
        } maximumValueLabel: {
          Text("100")
        } onEditingChanged: { editing in
          isEditing = editing
        }
        .padding(.horizontal, 20)
        

        TextField("입력", text: $text)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding(.horizontal, 20)
          
        Picker(selection: $colorIndex, label: Text("Color")) {
          ForEach(0..<colorNames.count, id: \.self) { color in
            Text(colorNames[color])
              .foregroundStyle(colors[color])
          }
        }
        .pickerStyle(.wheel)
        .padding(.horizontal, 20)

        
      }
    }
  }
}

#Preview {
    LayoutView()
}
