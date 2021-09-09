//
//  ViewController.swift
//  lab1
//
//  Created by Grace Geer on 9/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petImage: UIImageView!
    
    @IBAction func switchButton(_ sender: UIButton) {
        if sender.tag == 1 {
            petImage.image=UIImage(named: "dog")
            outputText.text="Yay Dogs!"
        }
        else if sender.tag == 2 {
            petImage.image=UIImage(named: "cat")
            outputText.text="Yay Cats!"

        }
    }
    @IBOutlet weak var outputText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

