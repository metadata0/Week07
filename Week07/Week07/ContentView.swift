//
//  ContentView.swift
//  Week07
//
//  Created by Henry Chen on 3/21/23.
//

import SwiftUI
import CoreData

class ImageManager: ObservableObject {
    let slides1 = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png"]
    let slides2 = ["2.png", "3.png", "4.png", "5.png"]
    let slides3 = ["5.png", "6.png", "7.png", "8.png", "2.png"]
    
    lazy var slideParent = [slides1, slides2, slides3]
    
//    @Published var parentIndex: Int? = nil
//    @Published var subIndex: Int? = nil
//
//    @Published var selectedImgName: String? = nil
//    trying to initialize variables to non-optional values?

    
    @Published var parentIndex: Int = 0
    @Published var subIndex: Int = 0
    
    @Published var selectedImgName: String = ""
    
    init() {
        //self.parentIndex = 0
        //self.subIndex = 0
        self.selectedImgName = slideParent[self.parentIndex][self.subIndex]
        
    }
}


struct ContentView: View {
    
    @StateObject var ImgSlide = ImageManager()
    
    
    var body: some View {
        VStack {
            Form {
                Section {
                    ForEach(0..<ImgSlide.slideParent.count){ index in
                        NavigationLink("Slide number \(index + 1)",
                            destination: SlidePage(),
                            tag: index,
                            selection: .constant(ImgSlide.parentIndex))
                        //selection sets the selectedSong property of the PlaylistInfoManager to the index of the selected song.
                    }
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
