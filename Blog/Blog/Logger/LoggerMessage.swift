//
// Created by Alexander Martirosov on 2019-03-09.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import Foundation

enum LoggerMessage {

    /// Use this case to capture information that may be helpful for figuring out what is going on in the process
    case info(message: String)

    /// Use this case to report about any logical error in the process
    case error(message: String)

}
