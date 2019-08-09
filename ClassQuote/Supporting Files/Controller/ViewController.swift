//
//  ViewController.swift
//  ClassQuote
//
//  Created by Lauriane Haydari on 09/08/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var imageView: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var newQuoteButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func addShadowToQuoteLabel() {
        quoteLabel.layer.shadowColor = UIColor.black.cgColor
        quoteLabel.layer.opacity = 0.9
        quoteLabel.layer.shadowOffset = CGSize(width: 1, height: 1)
    }

    @IBAction func tappedNewQuoteButton(_ sender: UIButton) {
        QuoteService.getQuote()
    }

}

