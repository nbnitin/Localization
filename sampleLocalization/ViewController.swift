//
//  ViewController.swift
//  sampleLocalization
//
//  Created by Nitin Bhatia on 16/10/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtView.text = NSLocalizedString("BOOK_DETAIL", comment: "book detail")
    }
    
    override func viewDidLayoutSubviews() {
        txtView.setContentOffset(.zero, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buyAction(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        alert.title = NSLocalizedString("ALERT_TITLE", comment: "alert title")
        alert.message = NSLocalizedString("ALERT_MESSAGE", comment: "alert message")
        
        let alertCancelAction = UIAlertAction(title: NSLocalizedString("ALERT_CANCEL_TITLE", comment: "alert cancel title"), style: .cancel, handler: nil)
        
        let alertBuyAction = UIAlertAction(title: NSLocalizedString("ALERT_BUY_TITLE", comment: "alert buy title"), style: .default, handler: { action in
            print("Done")
        })
        
        alert.addAction(alertCancelAction)
        alert.addAction(alertBuyAction)
        self.present(alert, animated: true, completion: nil)
    }


}

