//
//  SecondWidget.swift
//  MyWidgetExtension
//
//  Created by Yusuke Hasegawa on 2021/05/13.
//

import SwiftUI
import WidgetKit

struct SecondView: View {
    
    var entry: SimpleEntry
    
    var body: some View {
        return Text("Second Widget")
    }
}

struct SecondWidget: Widget {
    let kind: String = "SecondWidget"

    var body: some WidgetConfiguration {

        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            SecondView(entry: entry)
        }
        .configurationDisplayName("Second Widget")
        .description("This is an example widget.")
    }
}
