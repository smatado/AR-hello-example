//
//  TextModelEntity.swift
//  ARHello
//
//  Created by Silbino Gonçalves Matado on 2024-05-03.
//

import SwiftUI
import RealityKit

func textModelEntity(_ text: String) -> ModelEntity {
    
    // Create a material (surface properties) for the 3D model.
    // Here, we're using a simple non-metallic white material.
    let material = SimpleMaterial(color: .white, isMetallic: false)
    
    // Create the font
    let font = UIFont(name: "SignPainter", size: 0.2) ?? .systemFont(ofSize: 0.2)

    // Use MeshResource.generateText method to create a 3D text mesh.
    // Then Specify the text, extrusion depth (thickness) and the desired font.
    return ModelEntity(
        mesh: .generateText(
            text,
            extrusionDepth: 0.02,
            font: font
        ),
        materials: [material] // Assign the material to the mesh.
    )
}

