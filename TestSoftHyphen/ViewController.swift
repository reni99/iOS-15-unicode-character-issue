//
//  ViewController.swift
//  TestSoftHyphen
//
//  Created by Renato Stauffer on 24.09.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue"
    }
}

