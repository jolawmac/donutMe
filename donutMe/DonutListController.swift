//
//  DonutListController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/27/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class DonutListController {
    
    static var donutList: [Donut] {
        
        let doughnut = Donut(name: "Doughnut", donutInfo: "A doughnut is a deep-fried confectionery made of enriched dough traditionally ringed shaped topped with glaze, sugar, or frosting")
        
        let yeastDonut = Donut(name: "Yeast Doughnut", donutInfo: "The yeast doughnut uses yeast as a leavener usually resulting in a light, airy doughnut. Usually more fluffy and stretchy as compared to the tradition donut. This type of donut is probably the most common usually refered to as the glazed doughnut.")
        
        let cake = Donut(name: "Cake Doughnut", donutInfo: "The cake doughnut is made from a cake-like batter usually leavened with baking powder. Usually the more traditional doughnuts are made from the cake-like batter.")
    
        let oldFashionedDonut = Donut(name: "Old-Fashioned Doughnut", donutInfo: "The old-fashioned donut is a cake douhgnut that has jagged edges rather than the normal perfect ring shape. They tend to have more of a crunchy feel on the outter layer")
        
        let chocolateGlazed = Donut(name: "Chocolate Glazed", donutInfo: "The chocolate glazed doughnut is a regular doughnut with a rich chocolate glazed poured over the top. Most people prefer reguar glazed or chocolate glazed doughnuts.")
        
        let powderedDoughnut = Donut(name: "Powdered Doughnut", donutInfo: "The powdered doughnut is a traditional doughnut rolled in powdered sugar that results in the doughnut entirely coated in powdered sugar. Usually has a soft texture and a very sweet flavor.")
        
        let chocolateDoughnut = Donut(name: "Chocolate Doughnut", donutInfo: "Chocolate doughnuts are traditional doughnuts that have chocolate in the mix. These are chocolate flavered and usually include a glaze or sugar as a topping.")
        
        let creamFilledDoughnut = Donut(name: "Cream-Filled Doughnut", donutInfo: "A douhgnut that has flavored cream in the middle instead of the normal ring shape. The cream is usually a sweet jelly or cream cheese.")
        
        let doughnutHole = Donut(name: "Doughnut Holes", donutInfo: "Small, round doughnuts usually representing the hole missing from the regular doughnuts. Usually glazed or sugared. The best are chocolate covered sprinkled doughnut holes. Bite size sugay goodness!")
        
        let appleFritter = Donut(name: "Apple Fritter", donutInfo: "The apple fritter is usually made by tossing apple chunks into the doughnut batter. Usually irregularly shaped and glazed. Sometimes they may contain nuts or sugar and cinnamon on top.")
        
        let bostonCreme = Donut(name: "Boston Creme", donutInfo: "A round filled doughnut with a vanilla custard filling and a chocolate glaaze on top. Made to resemble the Boston Creme pie.")
        
        let blueberry = Donut(name: "Blueberry", donutInfo: "The blueberry doughnut is a cake doughnut with a blueberry mix usually glazed in a light sugary topping.")
        
        let eclair = Donut(name: "Eclair", donutInfo: "An eclair is a pastry that's usually filled with a cream with a sweet topping such as chocolate.")
        
        let chocolateCakeGlazed = Donut(name: "Chocolate Cake Glazed", donutInfo: "The chocolate cake glazed donut is made from a cake-like batter with chocolate flavor added in finished off with a glazed topping. ")
        
        return [doughnut, yeastDonut, cake, oldFashionedDonut, chocolateGlazed, powderedDoughnut, chocolateDoughnut, creamFilledDoughnut, doughnutHole, appleFritter, bostonCreme, blueberry, eclair, chocolateCakeGlazed]
    }
    
}



