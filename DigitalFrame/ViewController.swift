//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 사명구 on 2018. 4. 20..
//  Copyright © 2018 Quest4I. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let cuteImages = [
            UIImage(named: "cat1.jpg")!,
            UIImage(named: "cat2.jpg")!,
            UIImage(named: "cat3.jpg")!,
            UIImage(named: "cat4.jpg")!,
            UIImage(named: "cat5.jpg")!,
            UIImage(named: "cat6.jpg")!,
            UIImage(named: "cat7.jpg")!,
            UIImage(named: "cat8.jpg")!,
            UIImage(named: "cat9.jpg")!,
            UIImage(named: "cat10.jpg")!,
            UIImage(named: "cat11.jpg")!,
            UIImage(named: "cat12.jpg")!,
            UIImage(named: "cat13.jpg")!,
            UIImage(named: "cat14.jpg")!,
            UIImage(named: "cat15.jpg")!
        ]

        imgView.animationImages = cuteImages
        imgView.animationDuration = 15
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }

    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }

    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
