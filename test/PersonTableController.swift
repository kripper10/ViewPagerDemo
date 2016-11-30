//
//  PersonTableView.swift
//  ViewPager Example
//
//  Created by Chris on 09/11/2016.
//  Copyright © 2016 Chris. All rights reserved.
//


import UIKit
import XLPagerTabStrip

class PersonTableController: UITableViewController, IndicatorInfoProvider {
    
    let cellIdentifier = "PersonData"
    var itemInfo = IndicatorInfo(title: "View")
    
    var personInfo: PersonInfo!
    var personInfoArr = [PersonInfo(name: "Frank Jones", age: 5),PersonInfo(name: "Harry Stone", age: 9),PersonInfo(name: "Arnie", age: 42),PersonInfo(name: "Jack", age: 42)]
    
    
    init(style: UITableViewStyle, itemInfo: IndicatorInfo) {
        self.itemInfo = itemInfo
        super.init(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.register(UINib(nibName: "PersonTableViewController", bundle: Bundle.main), forCellReuseIdentifier: cellIdentifier)
        tableView.estimatedRowHeight = 60.0;
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.allowsSelection = false
        /*if blackTheme {
         tableView.backgroundColor = UIColor(red: 15/255.0, green: 16/255.0, blue: 16/255.0, alpha: 1.0)
         }*/
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personInfoArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PersonData {
            let personInfo = personInfoArr[indexPath.row]
            cell.configureCell(personInfo: personInfo)
            
            return cell
        }else{
            return PersonData()
        }
        
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
    
    
}
