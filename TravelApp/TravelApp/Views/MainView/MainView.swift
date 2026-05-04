//  ContentView.swift

import SwiftUI

enum Page: Hashable {
    case details(String)
}

struct MainView: View {
    @State var path = NavigationPath()
    @State var text = ""
    var body: some View {
        NavigationStack(path: $path) {
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
                                    BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North", path: $path) {
                                        //
                                    }
                                    BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North", path: $path) {
                                        //
                                    }
                                    BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North", path: $path) {
                                        //
                                    }
                                    BigCardView(image: "img1", title: "Greenland", subTitle: "Greenland, North", path: $path) {
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
                                   CategoryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                    CategoryCardView(image: "img1", title: "Очень длинный", subTitle: "Mesir")
                                    CategoryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                    CategoryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
                                }
                                .frame(height: 100)
                                .padding(.vertical, 20)
                                .padding(.horizontal, 30)
                            }
                        }
                        
                    }
                   
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .navigationDestination(for: Page.self) { page in
                switch page {
                case .details(let image):
                    DetailsView(image: image, path: $path)
                        .navigationBarBackButtonHidden()
                }
            }
           
        }
        
    }
}

#Preview {
    MainView()
}
