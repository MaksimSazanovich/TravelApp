//  ContentView.swift

import SwiftUI

struct ContentView: View {
    @State var text = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 17) {
            PageHeader()
                .padding(.horizontal, 30)
            VStack(alignment: .leading, spacing: 30) {
                SearchView(text: $text)
                    .padding(.horizontal, 30)
                
                VStack(alignment: .leading, spacing: 0) {
                    //MARK: Popular Trips
                    VStack(alignment: .leading, spacing: 0) {
                        SectionHeader(text: "Popular Trips") {
                            //
                        }
                        .padding(.horizontal, 30)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 16) {
                                BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North") {
                                    //
                                }
                                
                                BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North") {
                                    //
                                }
                                
                                BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North") {
                                    //
                                }
                                
                                BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North") {
                                    //
                                }
                            }
                            .frame(height: 270)
                            .padding(.top, 15)
                            .padding(.bottom, 25)
                            .padding(.horizontal, 30)
                            
                        }
                    }
                    
                    //MARK: Popular Categories
                    VStack(alignment: .leading, spacing: 0) {
                        SectionHeader(text: "Popular Categories") {
                            //
                        }
                        .padding(.horizontal, 30)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 16) {
                               CategiryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                CategiryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                CategiryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                CategiryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                            }
                            .frame(height: 80)
                            .padding(.vertical, 20)
                            .padding(.horizontal, 30)
                        }
                    }
                    
                }
               
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct PageHeader: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.appGray, lineWidth: 1)
                        .frame(width: 50, height: 50)
                    Image(.user)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                VStack(alignment: .leading, spacing: 7) {
                    Text("Welcome")
                        .font(.system(size: 12))
                    Text("Max")
                        .font(.system(size: 17, weight: .bold))
                }
            }
            
            Spacer()
            Button {
                //
            } label: {
                ZStack {
                    Circle()
                        .stroke(.appGray, lineWidth: 1)
                        .frame(width: 50)
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .foregroundStyle(.appGray)
                        .overlay(alignment: .topTrailing) {
                            Circle()
                                .fill(.red)
                                .frame(width: 6.5)
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 1.5)
                                }
                                .offset(y: -2)
                        }
                }
            }

        }
    }
}

struct SearchView: View {
    @Binding var text: String
    var body: some View {
        HStack(spacing: 15) {
            TextField("Search your trip...", text: $text)
                .frame(height: 50)
                .padding(.horizontal, 10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 5)
            Button {
                //
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.appBlack)
                        .frame(width: 50, height: 50)
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.white)
                }
            }

        }
    }
}

struct SectionHeader: View {
    var text: String
    var action: () -> Void
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 20, weight: .bold))
            Spacer()
            Button {
                action()
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(.appBlack)
            }

        }
    }
}

struct BigCardView: View {
    var image: String
    var title: String
    var subTitle: String
    var likeAction: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .topTrailing) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Button {
                    //
                } label: {
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 35, height: 35)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18)
                            .foregroundStyle(.red)
                            
                    }
                }
                .offset(x: -10, y: 10)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundStyle(.appGray)
            }
        }
        .frame(width: 180)
        .padding(9)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

struct CategiryCardView: View {
    var image: String
    var title: String
    var subTitle: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundStyle(.appGray)
            }
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 0)
    }
}
#Preview {
    ContentView()
}
