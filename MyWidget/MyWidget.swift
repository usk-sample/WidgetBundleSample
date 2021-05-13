//
//  MyWidget.swift
//  MyWidget
//
//  Created by Yusuke Hasegawa on 2021/05/13.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    typealias Entry = SimpleEntry

    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

@main
struct MyWidgets: WidgetBundle {
    //MEMO: デフォルトのclass名を変える
    
    @WidgetBundleBuilder
    var body: some Widget {
        FirstWidget()
        SecondWidget()
    }
    
}
