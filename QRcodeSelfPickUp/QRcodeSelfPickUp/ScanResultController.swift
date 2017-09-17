//
//  ScanResultController.swift
//  QRcodeSelfPickUp
//
//  Created by Xiaofeng wang on 9/16/17.
//  Copyright © 2017 kiritoty. All rights reserved.
//

import UIKit

var re:String? = "null"

class ScanResultController: UIViewController {

    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var codeStringLabel: UILabel!
    
    var codeResult:LBXScanResult?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        get()
        codeStringLabel.text = ""

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        get()
        
        print(re!)
        
        if codeResult?.strScanned == re! {
            codeStringLabel.text = "Thanks you for pick up"
            image.image = UIImage(named: "thank-you.jpg")
        } else {
            codeStringLabel.text = "Sorry your QRcode do not match in our system"
            image.image = UIImage(named: "oops.png")
        }
      
        

    }
    
    func get() {
    
        guard let url = URL(string: "http://cobweb.cs.uga.edu/~zhenyu/json.html") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
      
            if let data = data {
                //print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                    
                    if let getPassword = json["password"] as AnyObject? {
                        if let b = getPassword as? String{
                            //print(b)
                            re = b
                        }
                        
                    }
                    
                    //print(json)
                } catch {
                    print(error)
                }
                
            }
            }.resume()
    }


}




