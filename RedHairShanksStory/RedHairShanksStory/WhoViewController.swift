//
//  WhoViewController.swift
//  RedHairShanksStory
//
//  Created by Khadar Jama Tukale on 2/27/23.
//

import UIKit

class WhoViewController: UIViewController {

    var shanks: ShanksO?

    
    @IBOutlet weak var StoryImage: UIImageView!
    @IBOutlet weak var StoryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let shanks = shanks{
            print(shanks.name)
        }
        if let shanks = shanks{
            StoryImage.image = shanks.image
            StoryLabel.text = shanks.name
            
            // Do any additional setup after loading the view.
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    
    */

}
