//
//  ViewController.swift
//  HomeWork23-2
//
//  Created by  NovA on 4.10.23.
//

import NVActivityIndicatorView
import UIKit

class ViewController: UIViewController {
    private let nvactivity = NVActivityIndicatorView(frame: .zero, type: .ballGridPulse, color: .red, padding: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startBtn(_ sender: Any) {
        startAnimation()
    }

    @IBAction func stopBtn(_ sender: Any) {
        stopAnimation()
    }

    private func startAnimation() {
        nvactivity.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nvactivity)
        NSLayoutConstraint.activate([
            nvactivity.widthAnchor.constraint(equalToConstant: 100),
            nvactivity.heightAnchor.constraint(equalToConstant: 100),
            nvactivity.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nvactivity.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
        ])
        nvactivity.startAnimating()
    }

    private func stopAnimation() {
        nvactivity.stopAnimating()
    }
}
