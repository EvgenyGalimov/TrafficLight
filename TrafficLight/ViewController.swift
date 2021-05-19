//
//  ViewController.swift
//  TrafficLight
//
//  Created by user on 19/05/2021.
//

import UIKit

enum ActualLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var greenLight: UIView!
    private var actualLight = ActualLight.red
    private let lightOn: Double = 1
    private let lightOff: Double = 0.35

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func tappedStartButton() {
        
    }
    
}
    

