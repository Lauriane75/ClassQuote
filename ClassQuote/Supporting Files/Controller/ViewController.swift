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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var newQuoteButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!


    override func viewDidLoad() {
        super.viewDidLoad()
        downloadQuote()
    }

    func addShadowToQuoteLabel() {
        quoteLabel.layer.shadowColor = UIColor.black.cgColor
        quoteLabel.layer.opacity = 0.9
        quoteLabel.layer.shadowOffset = CGSize(width: 1, height: 1)
    }

    @IBAction func tappedNewQuoteButton(_ sender: UIButton) {
        downloadQuote()
    }

    private func downloadQuote() {
        toggleActivityIndicator(shown: true)

        QuoteService.shared.getQuote { (success, quote) in
            self.toggleActivityIndicator(shown: false)

            if success, let quote = quote {
                self.update(quote: quote)
            } else {
                self.presentAlert()
            }
        }
    }

    private func toggleActivityIndicator(shown: Bool) {
        self.newQuoteButton.isHidden = shown
        self.activityIndicator.isHidden = !shown
        self.activityIndicator.startAnimating()

    }

    private func update(quote: Quote) {
        quoteLabel.text = quote.text
        authorLabel.text = quote.author
        imageView.image = UIImage(data: quote.imageData)

    }

    private func presentAlert() {
        let alert = UIAlertController(title: "Error", message: "The quote download failed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }


}


