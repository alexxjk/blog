//
// Created by Alexander Martirosov on 2019-03-09.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import Foundation

protocol Logger {
    func log(message: LoggerMessage, for subsystem: LoggerSubsystemCategory)
}
