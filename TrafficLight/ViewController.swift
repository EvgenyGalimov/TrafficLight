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
    private var actualLight: ActualLight?
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
     
    @IBAction func tappedStartButton() {
        nextLight()
        }
    
    func nextLight() {
        
        switch actualLight {
        case .red:
            UIView.animate(withDuration: 0.5) {
                self.redLight.alpha = self.lightOff
                self.yellowLight.alpha = self.lightOn
                self.greenLight.alpha = self.lightOff
            }
            actualLight = .yellow
            
        case .yellow:
            UIView.animate(withDuration: 0.5) {
                self.redLight.alpha = self.lightOff
                self.yellowLight.alpha = self.lightOff
                self.greenLight.alpha = self.lightOn
            }
            actualLight = .green
            
        case .green:
            UIView.animate(withDuration: 0.5) {
                self.redLight.alpha = self.lightOn
                self.yellowLight.alpha = self.lightOff
                self.greenLight.alpha = self.lightOff
            }
            actualLight = .red
            
        case .none:
            redLight.alpha = lightOn
            actualLight = .red
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}
    

    

