//
//  ContentView.swift
//  memer
//
//  Created by Alok Singh on 21/02/24.
//

import SwiftUI

enum Meme: String, CaseIterable {
   case 😅,🥳,🍐,💻,🏈,🏁
}

struct ContentView: View {
   @State var selectedMeme: Meme = Meme.😅;
    
    var memeList : Array<MemeModel>=[
        MemeModel(title: "Hold Finger",path: "meme1"),
        MemeModel(title: "Binary Number",path: "meme2"),
        MemeModel(title: "Documentation",path: "meme3"),
        MemeModel(title: "Software Phases",path: "meme4"),
        MemeModel(title: "Push or Pull",path: "meme5"),

    ];
    
    var body: some View {
     NavigationStack() {
      VStack {
          Text("Click to open memes").bold().font(.system(size: 20))
          Spacer().frame(height: 20)
          ForEach(memeList, id: \.self) { meme in
              NavigationLink(meme.title, value: meme)
              Spacer().frame(height: 10)
                      }
      }.navigationDestination(for: MemeModel.self) { value in
          Viewer(meme: value)
      }.navigationTitle("Memer 😝")
     }
    }
}

#Preview {
    ContentView()
}
