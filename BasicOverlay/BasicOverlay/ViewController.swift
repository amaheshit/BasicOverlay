//
//  ViewController.swift
//  BasicOverlay
//
//  Created by Mahesh on 15/12/18.
//  Copyright © 2018 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy private var loadingOverlay: LoadingOverlay = {
        return LoadingOverlay.shared
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showToastAction(_ sender: UIButton) {
        self.loadingOverlay.showOverlay(view: self.view)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            self?.loadingOverlay.hideOverlayView()
        }
    }
    
    @IBAction func hideToastAction(_ sender: UIButton) {
        self.loadingOverlay.hideOverlayView()
    }
}

