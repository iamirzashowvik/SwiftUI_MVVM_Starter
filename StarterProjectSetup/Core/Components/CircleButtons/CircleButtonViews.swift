//
//  CircleButtonViews.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

import SwiftUI

struct CircleButtonViews: View {
    
    let iconName:String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50,height: 50)
            .background(Circle().foregroundColor(Color.theme.background))
            .shadow(
                color: Color.theme.accent.opacity(0.25), radius: 10
            )
            .padding()
    }
}

struct CircleButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CircleButtonViews(iconName: "info").previewLayout(.sizeThatFits)
//            CircleButtonViews(iconName: "plus").previewLayout(.sizeThatFits).colorScheme(.dark)
        }
    }
}
