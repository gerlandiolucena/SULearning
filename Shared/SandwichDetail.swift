//
//  SandwichDetail.swift
//  CombineLearning
//
//  Created by Gerlandio Lucena on 13/04/21.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                SpiceLabel()
                    .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SandwichDetail(sandwich: testData[1])
        }
    }
}

struct SpiceLabel: View {
    var body: some View {
        HStack {
            Spacer()
            Label("Spicy", systemImage: "flame.fill")
            Spacer()
        }
        .padding(.all)
        .font(.headline)
        .foregroundColor(.yellow)
        .background(Color.red)
    }
}
