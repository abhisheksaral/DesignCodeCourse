//
//  LibraryContent.swift
//  DesignCodeCourse
//
//  Created by Abhishek Saral on 7/16/21.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views:[LibraryItem] {
        LibraryItem(
            CloseButton(),
            title: "Closed Button View",
            category: .control)
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.cardStyle(color: Color.blue, cornerRadius: 22),
            title: "Card Style",
            category: .effect
        )
    }
}

extension View {
    func cardStyle(color: Color, cornerRadius: CGFloat) -> some View {
        return self
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .shadow( color: color.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}
