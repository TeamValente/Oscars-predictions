//
//  ViewController.swift
//  OscarsPredictions
//
//  Created by Mariano Molina on 2/1/16.
//  Copyright © 2016 marianomolina.xyz. All rights reserved.
//

import UIKit
import Firebase

let rootURL = "https://oscarspredictions.firebaseio.com/"

class ViewController: UIViewController {

    @IBOutlet weak var responseView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nominationList = Firebase(url: "\(rootURL)/nominations")
        nominationList.observeEventType(.Value, withBlock: { snapshot in
            self.responseView.text = "\(snapshot.value)"
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }


}

