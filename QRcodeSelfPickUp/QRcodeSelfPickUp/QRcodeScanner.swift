//
//  QRcodeScanner.swift
//  QRcodeSelfPickUp
//
//  Created by Xiaofeng wang on 9/16/17.
//  Copyright © 2017 kiritoty. All rights reserved.
//

import UIKit

class QRcodeScanner: LBXScanViewController{
    
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
 
        
        var style = LBXScanViewStyle()
        style.anmiationStyle = .NetGrid
        style.animationImage = UIImage(named: "CodeScan.bundle/qrcode_scan_part_net")
        
        scanStyle = style
        
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //view.bringSubview(toFront: subView)
        view.bringSubview(toFront: subView)
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func handleCodeResult(arrayResult: [LBXScanResult]) {
        
        for result:LBXScanResult in arrayResult
        {
            if let str = result.strScanned {
                print(str)
            }
        }
        
        let result:LBXScanResult = arrayResult[0]
        
        let vc = ScanResultController()
        vc.codeResult = result
        navigationController?.pushViewController(vc, animated: true)
    }
    
 
    


}
