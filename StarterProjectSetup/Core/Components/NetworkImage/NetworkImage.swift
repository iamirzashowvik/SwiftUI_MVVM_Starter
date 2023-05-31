//
//  NetworkImage.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct NetworkImage: View {
    
    let image:String?
    let height:CGFloat
    let width:CGFloat
    
    init(image: String?, height: CGFloat, width: CGFloat) {
        print(image)
        self.image = image
        self.height = height
        self.width = width
    }
    
    
    var body: some View {
        AsyncImage(
            url: URL(string: image ?? "https://i.pinimg.com/564x/4a/e2/cd/4ae2cd3a5023659cb59ed3a09de29b99.jpg"  ),
                        content: { image in
                            image.resizable()
                                .aspectRatio(width/height, contentMode: .fit
                                )
                                .frame(width: width , height:height)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
    }
}
