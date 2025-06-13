//
//  ContentView.swift
//  Slider_dino
//
//  Created by 莊惠淇 on 2025/6/12.
//

import SwiftUI

struct ContentView: View {
    @State private var selectCharacter: String = "CHOOSE A DINO"
    @State private var red: Double = 1
    @State private var green: Double = 1
    @State private var blue: Double = 1
    @State private var opacity: Double = 1
    @State private var bright: Double = 0
    @State private var angle: Double = 0
    @State private var blur: Double = 0
    @State private var contrast: Double = 1
    @State private var saturation: Double = 1
    @State private var scale: Double = 1
    let characters = ["CHOOSE A DINO", "Reptor", "T-Rex", "Triceratops"]
    
    var body: some View {
        VStack {
            Picker("Select Character", selection: $selectCharacter) {
                ForEach(characters, id: \.self) { character in
                    Text(character)
                }
            }
            // 只有選到角色時才顯示圖片和Form
            if selectCharacter != "CHOOSE A DINO" {
                Image(selectCharacter)
                    .resizable()
                    .scaledToFit()
                    .background(Color(red:red, green:green, blue: blue, opacity: opacity))
                    .contrast(contrast)
                    .saturation(saturation)
                    .scaleEffect(scale)
                    .brightness(bright)
                    .blur(radius: blur)
                    .rotationEffect(.degrees(angle))
                    .clipShape(.rect(cornerRadius: 5))
                Form {
                    HStack{
                        Text("RED")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $red, in: 0...1)
                            .tint(.red)
                        Text(red.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("GREEN")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $green, in: 0...1)
                            .tint(.green)
                        Text(green.formatted(.number.precision(.fractionLength(0...2))))
                        
                    }
                    HStack{
                        Text("BLUE")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $blue, in: 0...1)
                            .tint(.blue)
                        Text(blue.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("OPACITY")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $opacity, in: 0...1)
                            .tint(.black)
                        Text(opacity.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("CONTRAST")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $contrast, in: 0...1)
                            .tint(.black)
                        Text(contrast.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("BRIGHT")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $bright, in: 0...1)
                            .tint(.black)
                        Text(bright.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("SATURATION")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $saturation, in: 0...1)
                            .tint(.black)
                        Text(saturation.formatted(.number.precision(.fractionLength(0...2))))
                    }
                    HStack{
                        Text("BLUR")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $blur, in: 0...20)
                            .tint(.black)
                        Text(blur.formatted(.number.precision(.fractionLength(0))))
                    }
                    HStack{
                        Text("ANGLE")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $angle, in: 0...359)
                            .tint(.black)
                        Text(angle.formatted(.number.precision(.fractionLength(0))))
                    }
                    HStack{
                        Text("SCALE")
                            .frame(width: 80, alignment: .center)
                        Slider(value: $scale, in: 0...1)
                            .tint(.black)
                        Text(scale.formatted(.number.precision(.fractionLength(0...2))))
                    }
                }
                Button("RANDOM") {
                    red = .random(in: 0...1)
                    green = .random(in: 0...1)
                    blue = .random(in: 0...1)
                    opacity = .random(in: 0...1)
                    contrast = .random(in: 0...1)
                    saturation = .random(in: 0...1)
                    bright = .random(in: 0...1)
                    blur = .random(in: 0...20)
                    angle = .random(in: 0...359)
                    scale = .random(in: 0...1)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
