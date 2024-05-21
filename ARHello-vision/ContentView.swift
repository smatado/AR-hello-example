//
//  ContentView.swift
//  ARHello-vision
//
//  Created by Silbino Gonçalves Matado on 2024-04-29.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        RealityView { content in
            
            // Generate a 3D model from the text using our custom function.
            let textModelEntity = textModelEntity("hello")
            
            // Add the model entity to the RealityView content.
            content.add(textModelEntity)
        }
    }
}
