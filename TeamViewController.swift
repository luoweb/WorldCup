//
//  TeamViewController.swift
//  WorldCup
//
//  Created by luweb on 6/15/14.
//  Copyright (c) 2014 luowb. All rights reserved.
//

import UIKit

let reuseIdentifier = "TeamCells"


class TeamViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

//    var images = NSMutableArray()
    
//    init(coder aDecoder: NSCoder!) {
//        super.init(coder: aDecoder)
//    }
    
//    var i = 0
    var teamName = [
        "A1":"巴西",
        "B1":"西班牙",
        "C1":"哥伦比亚",
        "D1":"乌拉圭",
        "E1":"瑞士",
        "F1":"阿根廷",
        "G1":"德国",
        "H1":"比利时",
        "A2":"喀麦隆",
        "B2":"智利",
        "C2":"科特迪瓦",
        "D2":"英格兰",
        "E2":"厄瓜多尔",
        "F2":"尼日利亚",
        "G2":"加纳",
        "H2":"阿尔及利亚",
        "A3":"墨西哥",
        "B3":"澳大利亚",
        "C3":"日本",
        "D3":"哥斯达黎加",
        "E3":"洪都拉斯",
        "F3":"伊朗",	
        "G3":"美国",
        "H3":"韩国",
        "A4":"克罗地亚",	
        "B4":"荷兰",
        "C4":"希腊",
        "D4":"意大利",
        "E4":"法国",
        "F4":"波黑",
        "G4":"葡萄牙",
        "H4":"俄罗斯"]
    var groupName = ["A","B","C","D","E","F","G","H"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        println("Load Images")
//        loadImages()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // #pragma mark UICollectionViewDataSource
    
    
      func numberOfSectionsInCollectionView(collectionView: UICollectionView?) -> Int {
        return 8
    }
    
    
      func collectionView(collectionView: UICollectionView?, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
      func collectionView(collectionView: UICollectionView?, cellForItemAtIndexPath indexPath: NSIndexPath?) -> UICollectionViewCell? {
        let cell = collectionView?.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as TeamCollectionViewCell
        
        
        cell.imageView.image = UIImage(named:"\(indexPath!.item + 1 + (indexPath!.section * 4))" + "\(groupName[indexPath!.section)" + "\(indexPath!.item+1)" + ".png")
        
        cell.teamLabel.text = teamName[ "\(groupName[indexPath!.section)" + "\(indexPath!.item+1)"]
        println("\(groupName[indexPath!.section)" + "\(indexPath!.item+1)" + cell.teamLabel.text)
        return cell
    }

    func collectionView(collectionView: UICollectionView!, viewForSupplementaryElementOfKind kind: String!, atIndexPath indexPath: NSIndexPath!) -> UICollectionReusableView!{
        let Header = collectionView?.dequeueReusableSupplementaryViewOfKind(kind,withReuseIdentifier: "kSectionHeader",forIndexPath:indexPath) as TeamCollectionReusableView ;
        
        Header.groupLabel.text =  groupName[indexPath!.section] + "组"
        return Header
    }
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    // pragma mark <UICollectionViewDelegate>
    func collectionView(collectionView: UICollectionView!, didSelectItemAtIndexPath indexPath: NSIndexPath!){
        println("Did Sth.")
    }
    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
     func collectionView(collectionView: UICollectionView?, shouldHighlightItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        return true
    }
    
    
    
    // Uncomment this method to specify if the specified item should be selected
     func collectionView(collectionView: UICollectionView?, shouldSelectItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        return true
    }

    

    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     func collectionView(collectionView: UICollectionView?, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
    return false
    }
    
    
//    func collectionView(collectionView: UICollectionView?, canPerformAction action: String?, forItemAtIndexPath indexPath: NSIndexPath?, withSender sender: AnyObject) -> Bool {
//    return false
//    }
//    
//    func collectionView(collectionView: UICollectionView?, performAction action: String?, forItemAtIndexPath indexPath: NSIndexPath?, withSender sender: AnyObject) {
//    
//    }



}
