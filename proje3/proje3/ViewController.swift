//
//  ViewController.swift
//  proje3
//
//  Created by Yuta Fujiwara on 2017/08/29.
//  Copyright © 2017年 Yuta Fujiwara. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> UITableViewCell {
    //cellwotukuru
      //  return UITableViewCell
    //}
    
    //func tableView(_ tableView: UITableView,number0fRowsInSection section: Int) -> Int{
    //cellnokazuwosettei
      //  return Int
    //}
    
    //Mark: - UITableViewDelegate
    //func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath){
    //cellgatapsaretatokinosyori
        
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cellwotukuru
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier:
                "listCell", for: indexPath)
        
        cell.textLabel!.text = "\(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int{
    //cellnokazuwosettei
        return 10
        
    }
    //Mark: - UITableViewDelegate
    func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath){
        //cellgatapsaretatokinosyori
        print("タップされた時のindex番号: \(indexPath.row)")
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "result", sender: indexPath.row) // 画面遷移
    }
    override func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        
        let resultvc = segue.destination as! ResultViewController
        
        resultvc.num = sender as! Int
        
    }
}

