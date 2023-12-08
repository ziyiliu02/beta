//
//  ProfileView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EpisodeCarouselView()
                    .frame(height: 250)
                
                HStack(spacing: 20) {
                    ZStack {
                        Image("profile-image")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                        
                        Image(systemName: "plus")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .padding(.top, 65)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(currentUser?.name ?? "Name")
                            .font(.title2)
                            .bold()
                        
                        Text("@name01")
                            .foregroundStyle(Color.theme.gray)
                        
                        if let bio = currentUser?.bio {
                            Text(bio)
                                .padding(.top, 5)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 40)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Channels")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("1")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 50))

                        Image(systemName: "chevron.right")
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(1 ..< 5, id: \.self) { episode in
                                VStack {
                                    Rectangle()
                                        .frame(width: 100, height: 110)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                    }
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("History")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        HStack {
                            Text("Nov 2023")
                                .bold()
                            
                            Image(systemName: "chevron.down")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Day")
                                .bold()
                            
                            Image(systemName: "chevron.down")
                        }
                    }
                    
                    Text("8 Nov 2023, Wed")
                    
                    HStack {
                        Text("8AM")
                            .padding(.trailing, 10)
                        
                        Rectangle()
                            .frame(width: 280, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    .foregroundStyle(Color.white)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
