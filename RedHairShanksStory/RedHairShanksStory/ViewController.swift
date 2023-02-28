//
//  ViewController.swift
//  RedHairShanksStory
//
//  Created by Khadar Jama Tukale on 2/27/23.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: Models
    
    var navigationPrompt: String?
    
    
    let whoS = ShanksO(name: "I am a fearsome Pirate, Captain and a Emperor", image: UIImage(named:"Marineford")!)
    let rightS = ShanksO(name: "Ben Beckman is my first crew mate", image: UIImage(named:"Beckman")!)
    let foeS = ShanksO(name: "Blackbeard is my greatest foe and threat", image: UIImage(named:"BlackBeard")!)
    
    var redhair: [ShanksO] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redhair = [whoS,rightS,foeS]
    }
    
    @IBAction func didtapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "whoSegue", sender: tappedView)
        }
    }
    
    @IBOutlet weak var whoButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var foeButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "whoSegue"{
            let whoViewController = segue.destination as! WhoViewController
            if sender as? UIButton == whoButton {
                whoViewController.navigationItem.prompt = "Who Am I?"
                whoViewController.shanks = whoS
            }
            else if sender as? UIButton == rightButton {
                whoViewController.shanks = rightS
            }
            else if sender as? UIButton == foeButton {
                whoViewController.shanks = foeS
            }
        }
    }
            
    
  
    
}

