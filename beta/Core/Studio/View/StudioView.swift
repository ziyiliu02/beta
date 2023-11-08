//
//  StudioView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct StudioView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                
                Jarvis()
                
                IdeaFactory()
                
                Channel()

            }
        }
    }
}

struct StudioView_Previews: PreviewProvider {
    static var previews: some View {
        StudioView()
    }
}

struct Jarvis: View {
    
    @State private var query = ""
    
    var body: some View {
        HStack {
            TextField("How can I assist you today?", text: $query)
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color.theme.gray)
                }
            
            Image(systemName: "mic")
            
            Image(systemName: "clock.arrow.circlepath")
        }
        .padding()
    }
}

struct IdeaFactory: View {
    var body: some View {
        VStack {
            StudioSectionHeader(icon: "lightbulb", title: "Idea Factory")
            .padding(.bottom)
            
            ZStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Title")
                                .bold()
                            
                            Text("Producer . Channel")
                                .font(.caption)
                                .foregroundStyle(Color.theme.gray)
                        }
                        
                        Spacer()
                        
                        Text("Date")
                            .font(.caption)
                            .foregroundStyle(Color.theme.gray)
                    }
                    .padding(.top, 10)
                    
                    Spacer()
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500swhen an unknown printer took a galley of type and scrambled it to make a type specimen book.-")
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "tag")
                            Image(systemName: "pencil.tip.crop.circle")
                            Image(systemName: "folder")
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                        }
                        .padding(.bottom, 15)
                        
                        TagList()
                    }
                    .padding(.bottom, 10)
                }
                .padding()
            }
            .frame(width: 340, height: 320)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(Color.theme.gray)
            }
        }
        .padding(.horizontal, 25)
        .padding(.vertical)
    }
}

struct Channel: View {
    var body: some View {
        VStack {
            StudioSectionHeader(icon: "folder", title: "Channels")
            .padding(.bottom)
            
            ZStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Conversations")
                                .bold()
                            
                            Text("10 Episodes")
                                .font(.caption)
                                .foregroundStyle(Color.theme.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                    }
                    .padding(.top, 10)
                    
                    Spacer()
                    
                    TagList()
                    .padding(.bottom, 10)
                }
                .padding()
            }
            .frame(width: 340, height: 150)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(Color.theme.gray)
            }
        }
        .padding(.horizontal, 25)
    }
}
