//
// Created by Alexander Martirosov on 2019-03-09.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import Foundation

enum LoggerNetworkingSubsystem: LoggerSubsystemCategory {

    var subsystem: String {
        return "com.ma_blog.networking.plist"
    }

    var category: String {
        switch self {
        case .request:
            return "Request"
        case .response:
            return "Response"
        }
    }

    /// Any request that is made by the process
    case request

    /// Any response that is received by the process
    case response
}
