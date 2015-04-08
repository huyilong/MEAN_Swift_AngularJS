// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let name = "Joe"
var name3:String? = nil // ? is optional
var name4:String? = "Joe"
let name5 = name4! //? is like a wrapper and ! is to unwrap it


for i in 0...99 {
    i*i
    //try all these things in the playground
    //0...99 is inclusive of both two ends
    
    //click on the points in the graph to see the value
}


let color = UIColor.purpleColor()

class DataSource:NSObject,UITableViewDataSource{
    //need to conform to the protocol
    
    
    var myData = "some stuff"
    var myArray = ["hello","world","haha"]
    
    //define a function
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) ->
        Int{
            return myArray.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath:NSIndexPath)->
        UITableViewCell{
            let myCell = UITableViewCell(style: .Default, reuseIdentifier: nil)
            
            myCell.textLabel.text = myArray[indexPath.row]
            return myCell
    }
    
    
    
}


let ds = DataSource()
let tableView = UITableView(frame:CGRect(x:0,y:0,width:320,height:240))
//give me the data and import into the new data
tableView.dataSource = ds
//refresh the table
//could click on the plus and then see the output conveniently
tableView.reloadData()
