//
//  File.swift
//  Week07
//
//  Created by Henry Chen on 3/21/23.
//

import SwiftUI
import CoreData

struct SlidePage: View {
    @StateObject var imgSlides = ImageManager()
    @State var imgName: String? = nil
    
    var body: some View {
        VStack {
            if let name = imgSlides.slideParent[imgSlides.parentIndex][imgSlides.subIndex] {
                SlideView(name: name)
            }
        }
        VStack {
            Image("1.png")
                .resizable()
                .scaledToFit()
        }
        
    //--------quote from sample code--------
//        HStack {
//            Button(action: previousItemAction) {
//            Image(systemName: "chevron.left")
//                .resizable()
//                .frame(width: 40, height: 40)
//            }
//            .padding()
//            Spacer()
//            Button(action: nextItemAction) {
//            Image(systemName: "chevron.right")
//                .resizable()
//                .frame(width: 40, height: 40)
//            }
//            .padding()
//        }
//    //--------end of quote--------
//
//    }
//
//    func previousItemAction() {
//            if (imgSlides.subIndex ?? 0 > 0) {
//                imgSlides.subIndex -= 1;
//            }
//        }
//
//    func nextItemAction() {
//        if (imgSlides.subIndex ?? 0 < imgSlides.slideParent[imgSlides.parentIndex ?? 0].count - 1) {
//            imgSlides.subIndex += 1;
//        }
    }
}

//two issues: image isn't showing up, and the optional integer needs to be unwrapped.

//initialize a struct with initializer - name
struct SlideView: View {
    var name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
        Text(name)
    }
}

struct NextPrevious_Previews: PreviewProvider {
  static var previews: some View {
    SlidePage()
  }
}
