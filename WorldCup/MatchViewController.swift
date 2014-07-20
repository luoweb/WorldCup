//
//  MatchViewController.swift
//  WorldCup
//
//  Created by luweb on 6/15/14.
//  Copyright (c) 2014 luowb. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    @IBOutlet var matchWebView: UIWebView = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURL(string: "http://3g.163.com/ntes/special/00340H1K/xwc2014matchlist.html")
        var request = NSURLRequest(URL: url)
        matchWebView.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
