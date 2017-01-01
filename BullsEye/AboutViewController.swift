//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Abraham Vazquez on 12/30/16.
//  Copyright © 2016 Abraham Vazquez. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController
{
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let ArchivoHTLM = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html")
        {
            if let htmlData = NSData(contentsOfFile: ArchivoHTLM)
            {
                let baseURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
    /***************************************************************************************/

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /***************************************************************************************/

    @IBAction func cerrar()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    /***************************************************************************************/
}