//
//  ContentView.swift
//  ARHello
//
//  Created by Silbino Gonçalves Matado on 2024-04-29.
//

import SwiftUI
import RealityKit

struct ContentView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        // RealityView isn't available on iOS. Instead, create a UIViewRepresentable to provide an ARView.
        let arView = ARView(frame: .zero)

        // Generate a 3D model from the text using our custom function.
        let text = textModelEntity("hello")

        // Create an anchor entity to position the 3D model in the real world.
        // Here, we're using an anchor with a fixed (x, y, z) position just in front of you.
        let worldAnchor = AnchorEntity(world: [0, 0, -1])

        // Attach the 3D text model to the anchor entity.
        worldAnchor.children.append(text)
        
        // Add the anchor to the AR scene.
        arView.scene.addAnchor(worldAnchor)
        
        // Return the ARView for rendering.
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        // This function can be used to update the ARView if necessary.
    }
}
