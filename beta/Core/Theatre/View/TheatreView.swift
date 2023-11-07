//
//  TheatreView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct TheatreView: View {
    
    @State var showRatingSheet = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // episode
                EpisodeCard()
                
                // icons
                HStack {
                    Button {
                        showRatingSheet.toggle()
                    } label: {
                        EpisodeIcon(icon: "popcorn", number: "4.8", title: "Audience Rating")
                    }
                    
                    Spacer()
                    
                    EpisodeIcon(icon: "brain", number: "10", title: "Save")
                    
                    EpisodeIcon(icon: "wineglass", number: "5", title: "Join the party")
                    
                    EpisodeIcon(icon: "mouth", number: "15", title: "Share")
                }
                .padding()
                
                // social
                EpisodeList(title: "Social")
                
                // related
                EpisodeList(title: "Related")
            }
            .background(Color.black)
            .foregroundStyle(Color.white)
            .sheet(isPresented: $showRatingSheet) {
                RatingSheetView()
                    .presentationDetents([.fraction(0.3), .medium])
            }
            
        }
    }
}

struct TheatreView_Previews: PreviewProvider {
    static var previews: some View {
        TheatreView()
    }
}

struct EpisodeCard: View {
    var body: some View {
        ZStack {
            EpisodeCarouselView()
            .frame(height: 320)
            
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Spacer()
                    
                    VStack {
                        Text("Title")
                            .font(.title2)
                            .bold()
                        
                        Text("Channel")
                    }
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink {
                            // To Do
                        } label: {
                            NotificationButton(numberOfNotifications: 1)
                        }
                        
                        NavigationLink {
                            // To Do
                        } label: {
                            Image(systemName: "clock.arrow.circlepath")
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                VStack(spacing: 2) {
                    Text("Producer")
                    
                    Text("#tag1")
                    
                    Text("timestamp")
                }
                .padding(.bottom, 40)
            }
        }
    }
}

struct RatingSheetView: View {
    var body: some View {
        VStack {
            Text("Rate this")
                .font(.title2)
                .bold()
            
            HStack(spacing: 20) {
                ForEach(1 ..< 6) { rating in
                    Image(systemName: "popcorn")
                }
            }
            .padding(.vertical)
            
            LargeButton(text: "Rate", color: Color.white)

        }
    }
}
