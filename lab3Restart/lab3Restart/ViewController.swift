//
//  ViewController.swift
//  lab3Restart
//
//  Created by Grace Geer on 9/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var bothImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    func updateImage() {
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text="Chartreux"
            bothImage.image=UIImage(named: "cat")
            titleLabel.textColor = .systemOrange
        }
        else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text="Border Collie"
            bothImage.image=UIImage(named: "dog")
            titleLabel.textColor = .systemMint
        }
    }

    func updateCaps(){
        if capitalSwitch.isOn {
            titleLabel.text=titleLabel.text?.uppercased()
        } else {
            titleLabel.text=titleLabel.text?.lowercased()
        }
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

