//
//  QuoteDetailView.swift
//  QuoteGarden
//
//  Created by Master Family on 07/10/2020.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var favoriteQuote: QuoteCD
    
    var body: some View {
        
        
        VStack {

            Text("# \(favoriteQuote.wrappedQuoteGenre)")
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .font(Font.system(.subheadline, design: .monospaced).weight(.ultraLight))
                .accessibilityLabel(Text("quote genre is \(favoriteQuote.wrappedQuoteGenre)"))
            
            ScrollView {
            Text("""
                "\(favoriteQuote.wrappedQuoteText)"
                """)
                .italic()
                .font(Font.system(.body, design: .monospaced).weight(.regular))
                .padding(.horizontal)
                .allowsTightening(true)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
                .accessibilityLabel(Text("quote text is \(favoriteQuote.wrappedQuoteText)"))
            }

            
            
            Text("~ \(favoriteQuote.wrappedQuoteAuthor)")
                .multilineTextAlignment(.center)
                .padding(.top)
                .foregroundColor(.gray)
                .font(Font.system(.callout, design: .monospaced).weight(.light))
                .accessibilityLabel(Text("quote author is \(favoriteQuote.wrappedQuoteAuthor)"))
            
        }.padding()
        

        
    }
}


