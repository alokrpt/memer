//
//  Viewer.swift
//  memer
//
//  Created by Alok Singh on 21/02/24.
//

import SwiftUI

struct Viewer: View {
    let meme: MemeModel
      
      init(meme: MemeModel) {
          self.meme = meme
      }
    var body: some View {
        VStack(content: {
            Image(meme.path).resizable()
                .scaledToFit()
            Spacer().frame(height: 20)
            Text(meme.title)
        })
    }
}

#Preview {
    Viewer(meme: MemeModel(title: "meme1", path: "meme1"))
}
