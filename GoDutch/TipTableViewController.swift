//
//  TipTableViewController.swift
//  GoDutch
//
//  Created by Calvin Nisbet on 2015-09-29.
//  Copyright © 2015 Lone Pine Creative. All rights reserved.
//

import UIKit

class TipTableViewController: UITableViewController {
    @IBOutlet weak var mealPriceTextField: UITextField!
    @IBOutlet weak var mealStepper: UIStepper!
    @IBOutlet weak var splitSwitch: UISwitch!
    @IBOutlet weak var tipSwitch: UISwitch!
    @IBOutlet weak var totalMealCost: UILabel!
    @IBOutlet weak var costButton: UIButton!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    var percentageVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        
        mealStepper.wraps = false
        mealStepper.autorepeat = false
        mealStepper.maximumValue = 14
        
      //What fonts do we have available? 
        
        self.navigationController?.navigationBar.topItem?.title = "GoDutch"
               var fontFamilies = UIFont.familyNames()
        
        for (var i:Int = 0; i < fontFamilies.count; i++) {
            
            let fontFamily: NSString = fontFamilies[i] as NSString
            
            let fontNames: NSArray = UIFont.fontNamesForFamilyName(fontFamilies[i] ) as NSArray
            
            print("Family:\(fontFamily)")
            
            print("\nName:\(fontNames)")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 || self.tipSwitch == true {
            return 5
        } else {
            return 2
        }
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 3 {
            percentageVisible = !percentageVisible
            tableView.reloadData()
        }
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 3 && tipSwitch == false {
            return 0.0
        }
        if indexPath.row == 4 {
            if tipSwitch.on == false  {
                return 0.0
            }
            return 44.0
        }
            return 44.0
    }
    
    
//Slider, Stepper, and Switch Actions
    
    @IBAction func tipSlider(sender: UISlider) {
        let sliderValue = Int(sender.value)
        print("Slider changing to \(sliderValue)")
        tipPercentageLabel.text = "\(sliderValue)%"
    }
    
    @IBAction func peopleStepper(sender: UIStepper) {
        peopleLabel.text = Int(sender.value).description
    }
    
    
    @IBAction func tipSwitchAction(sender: AnyObject) {
        tableView.reloadData()
        
        
    }
    
    @IBAction func mealCalculate(sender: AnyObject) {
        
        mealCost()
    }
    
    
    func mealCost() {
        let mealCost = mealPriceTextField.text
        let floatValueMeal = Double(mealCost!)
            print(floatValueMeal)
        
        let peopleAtMeal = Int(mealStepper.value)
        print(peopleAtMeal)
        
//        let indCost = Float(floatValueMeal!) / Int(peopleAtMeal)
//        print(indCost)
//        
//        if tipSlider == false {
//        
//      // totalMealCost.text = Float(indCost
//        } else {
//            let sliderValue = self.tipSlider.value/100
//            let tipCost = indCost * sliderValue
//            let mealCost = tipCost + indCost
//            print(mealCost)
//        }
        
        print("Meal cost is\(mealCost)")
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
