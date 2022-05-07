//
//  HomeView.swift
//  RestartOnboarding
//
//  Created by Shubham Kumar on 02/05/22.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            //MARK: Header
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            //MARK: Center
            Text("The timethat leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //MARK: Footer
            Spacer()
            
            Button {
                isOnboarding = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }// :VStack
    }
}

//MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
