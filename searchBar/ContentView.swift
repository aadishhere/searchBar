//
//  ContentView.swift
//  searchBar
//
//  Created by Aadish Jain on 15/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var searchText = ""

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                TopBarView(showMenu: $showMenu)

                HStack(spacing: 10) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)

                    TextField("Start typing to search...", text: $searchText)
                        .foregroundColor(.primary)
                        
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(25)
                .padding(.horizontal)
                .padding(.top, 15)
    
                Spacer()
            }
        }
    }
}

struct TopBarView: View {
    @Binding var showMenu: Bool

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea(edges: .top)

            HStack(spacing: 16) {
                Button(action: {
                    withAnimation {
                        showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(.systemBackground))
                        .padding(10)
                        .background(Color(.systemBackground).opacity(0.15))
                        .clipShape(Circle())
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text("BlueBex")
                        .font(.headline)
                        .foregroundColor(Color(.systemBackground))
                    Text("Stay Connected 🫱🏻‍🫲🏼")
                        .font(.caption)
                        .foregroundColor(Color(.systemBackground)).opacity(0.9)
                }

                Spacer()

                Image(systemName: "questionmark.circle.dashed")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .foregroundColor(.blue).opacity(0.8)
            }
            .padding()
        }
        .frame(height: 70)
        .background(.ultraThinMaterial)
    }
}

#Preview {
    ContentView()
}
