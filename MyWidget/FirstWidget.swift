//
//  FirstWidget.swift
//  WidgetBundleSample
//
//  Created by Yusuke Hasegawa on 2021/05/13.
//

import SwiftUI
import WidgetKit

struct FirstView: View {
    
    var entry: SimpleEntry
    
    var body: some View {
        return Text("First Widget")
    }
}

struct FirstWidget: Widget {
    let kind: String = "FirstWidget"

    var body: some WidgetConfiguration {

        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            FirstView(entry: entry)
        }
        .configurationDisplayName("First Widget")
        .description("This is an example widget.")
    }
}
