//
//  HomePage.swift
//  DumbLogger
//
//  Created by Milan Hancock on 5/15/25.
//


import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Top icons section
                HStack(spacing: 24) {
                    // First icon
                    VStack(alignment: .leading, spacing: 8) {
                        Button(action: {
                            // Action for first icon
                        }) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.primary)
                                .frame(width: 44, height: 44)
                                .background(Color(.systemGray6))
                                .cornerRadius(12)
                        }
                    }

                    // Second icon
                    VStack(alignment: .leading, spacing: 8) {
                        Button(action: {
                            // Action for second icon
                        }) {
                            Image(systemName: "bell.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.primary)
                                .frame(width: 44, height: 44)
                                .background(Color(.systemGray6))
                                .cornerRadius(12)
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal)

                // Image section
                VStack(alignment: .leading, spacing: 8) {
                    AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/4723d2331cd04cee88a3d17a9776f7fe/f6ddf2c2831e65edc2af68e61c3164bac11eb3dc?placeholderIfAbsent=true")!) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(maxWidth: .infinity, minHeight: 200)
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                                .cornerRadius(12)
                        case .failure:
                            Image(systemName: "photo")
                                .font(.largeTitle)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, minHeight: 200)
                        @unknown default:
                            EmptyView()
                        }
                    }
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding(.vertical)
        }
        .navigationTitle("Home")
        .navigationBarHidden(true)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}