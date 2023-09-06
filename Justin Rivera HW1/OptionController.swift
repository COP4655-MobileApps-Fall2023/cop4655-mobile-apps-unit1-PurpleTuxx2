//
//  OptionController.swift
//  Justin Rivera HW1
//
//  Created by Jorge Rivera on 9/5/23.
//

import UIKit

class OptionController: UIViewController {

    var selectedOption: String?
    
    @IBOutlet weak var selectedImage: UIImageView!
    
    @IBOutlet weak var selectedText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch selectedOption {
                case "Origin":
                    selectedImage.image = UIImage(named: "BatmanParents")
                    selectedText.text = """
                    Bruce Wayne was an innocent 8-year-old boy with a fear of bats. One night while out with his parents, they were robbed and murdered right before his eyes. This set Bruce on a path of crime-fighting and he adopted the Batman persona as a way to not only get over his own fear, but to make criminals fear what he once feared.
                    """
                case "Villain":
                    selectedImage.image = UIImage(named: "Joker")
                    selectedText.text = """
                    The clown prince of Crime, the Joker, stands as the infamous arch-nemesis of Batman. With a chaotic and unpredictable nature, the Joker wreaks havoc upon Gotham City, employing his malevolent genius to craft elaborate schemes that challenge the Dark Knight's sense of justice. Adorned with his signature grin, vibrant purple attire, and a mind veiled in enigma, the Joker embodies the embodiment of anarchy, an everlasting adversary to Batman's unwavering pursuit of order and righteousness.
                    """
                case "Vehicle":
                    selectedImage.image = UIImage(named: "Batmobile")
                    selectedText.text = """
                    Batman doesn't exactly have super speed, or super strength, or any superpowers at all. So when there is crime on the opposite side of Gotham City, Batman takes a car. But not any car. The Batmobile! It is as fast as a race car and as durable as a tank!
                    """
                default:
                    break
                }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
