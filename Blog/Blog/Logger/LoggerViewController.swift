//
// Created by Alexander Martirosov on 2019-03-10.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

class LoggerViewController: ViewController {

    private let logger: Logger = LoggerImpl()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logger.log(message: .info(message: "test"), for: LoggerNetworkingSubsystem.response)
    }
}
