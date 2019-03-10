//
// Created by Alexander Martirosov on 2019-03-09.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import Foundation
import os.log

class LoggerImpl: Logger {

    func log(message: LoggerMessage, for subsystem: LoggerSubsystemCategory) {
        let currentLog = OSLog(subsystem: subsystem.subsystem, category: subsystem.category)

        switch message {
        case .info(let message):
            os_log(message, log: currentLog, type: .info)
        }
    }
}
