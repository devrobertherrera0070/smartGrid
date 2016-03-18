//
//  StatisticsViewController.swift
//  MicroGridApplication
//
//  Created by Robert Herrera on 3/17/16.
//  Copyright © 2016 Robert Herrera. All rights reserved.
//

import UIKit
import Charts

class StatisticsViewController: UIViewController {

    @IBOutlet weak var barChartView: BarChartView!
    
    var days:[String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        let energy = [103.11, 97.0, 112.3, 100.4, 87.6, 90.45, 98.67, 93.9, 100.5, 112.5, 105.3, 99.0]
        
        setChart(days, values: energy)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        
        barChartView.noDataText = "Not enough data points."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Average Power")
        let chartData = BarChartData(xVals: days, dataSet: chartDataSet)
        barChartView.data = chartData
        barChartView.descriptionText = ""
        barChartView.animate(yAxisDuration: 1.5,easingOption: .EaseInBounce)
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
