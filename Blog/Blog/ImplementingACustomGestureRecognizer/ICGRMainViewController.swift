//
// Created by Alexander Martirosov on 2019-02-23.
// Copyright (c) 2019 Alexander Martirosov. All rights reserved.
//

import UIKit

class ICGRMainViewController: StackViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Lorem ipsum dolor sit amet",
                        text: "Atqui saepe ne vel, ceteros minimum adipiscing no sed, exerci ignota honestatis an quo. At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Te duis platonem suavitate eam, sadipscing",
                        text: "At esse reprehendunt vix, tota dolore minimum duo an"
                )) { [weak self] in self?.presentAlert() }

        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Libris legimus disputationi ex ius, vix at soluta intellegat delicatissimi, sea at recteque",
                        text: "At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri, ut unum blandit urbanitas sea."
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Lorem ipsum dolor sit amet",
                        text: "Atqui saepe ne vel, ceteros minimum adipiscing no sed, exerci ignota honestatis an quo. At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Libris legimus disputationi ex ius, vix at soluta intellegat delicatissimi, sea at recteque",
                        text: "At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri, ut unum blandit urbanitas sea."
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Te duis platonem suavitate eam, sadipscing",
                        text: "At esse reprehendunt vix, tota dolore minimum duo an"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Lorem ipsum dolor sit amet",
                        text: "Atqui saepe ne vel, ceteros minimum adipiscing no sed, exerci ignota honestatis an quo. At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Lorem ipsum dolor sit amet",
                        text: "Atqui saepe ne vel, ceteros minimum adipiscing no sed, exerci ignota honestatis an quo. At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Libris legimus disputationi ex ius, vix at soluta intellegat delicatissimi, sea at recteque",
                        text: "At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri, ut unum blandit urbanitas sea."
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Libris legimus disputationi ex ius, vix at soluta intellegat delicatissimi, sea at recteque",
                        text: "At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri, ut unum blandit urbanitas sea."
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Lorem ipsum dolor sit amet",
                        text: "Atqui saepe ne vel, ceteros minimum adipiscing no sed, exerci ignota honestatis an quo. At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri"
                )) { [weak self] in self?.presentAlert() }
        )

        self.stack.addArrangedSubview(
                ICGRMessageComponent(props: ICGRMessageComponent.Props(
                        title: "Libris legimus disputationi ex ius, vix at soluta intellegat delicatissimi, sea at recteque",
                        text: "At qui modo suas, case eloquentiam no duo. Aperiri delicata an quo. Ea suas apeirian mnesarchum pri, ut unum blandit urbanitas sea."
                )) { [weak self] in self?.presentAlert() }
        )
    }

    func presentAlert() {
        let alertController = UIAlertController(title: "👌", message: "😎😎😎😎", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
}
