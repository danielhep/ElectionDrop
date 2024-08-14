// MARK: - Views

// ElectionUpdateView.swift
import SwiftUI

struct ElectionUpdateView: View {
    var update: ElectionUpdate
    
    var body: some View {
        let resultColumns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
        Text("Day \(update.updateCount) Results")
            .font(.subheadline)
            .foregroundStyle(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
        LazyVGrid(columns: resultColumns) {
            Group {
                Text("Ballot Response")
                Text("Total Votes")
                Text("Percent of Vote")
            }
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
            .multilineTextAlignment(.center)
            
            ForEach(update.results) { result in
                ElectionResultView(result: result)
            }
        }
        .padding()
    }
}
