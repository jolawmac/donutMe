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
        
        let yeastDonut = Donut(name: "Yeast Doughnut", donutInfo: "The yeast doughnut uses yeast as a leavener usually resulting in a light, airy doughnut. Usually more fluffy and stretchy as compared to the tradition donut. This type of donut is probably the most common usually and is refered to as the glazed doughnut.")
        
        let cake = Donut(name: "Cake Doughnut", donutInfo: "The cake doughnut is made from a cake-like batter usually leavened with baking powder. Usually the more traditional doughnuts are made as cake doughnuts.")
    
        let oldFashionedDonut = Donut(name: "Old-Fashioned Doughnut", donutInfo: "The old-fashioned donut is a cake douhgnut that has jagged edges rather than the normal perfect ring shape. They tend to have more of a crunchy feel on the outter layer")
        
        let chocolateGlazed = Donut(name: "Chocolate Glazed", donutInfo: "The chocolate glazed doughnut is a regular doughnut with a rich chocolate glazed poured over the top. Most people prefer reguar glazed or chocolate glazed doughnuts.")
        
        let powderedDoughnut = Donut(name: "Powdered Doughnut", donutInfo: "The powdered doughnut is a traditional doughnut rolled in powdered sugar that results in the doughnut entirely coated in powdered sugar. Usually has a soft texture and a very sweet flavor.")
        
        let chocolateDoughnut = Donut(name: "Chocolate Doughnut", donutInfo: "Chocolate doughnuts are traditional doughnuts that have chocolate in the mix. These are chocolate flavered and usually include a glaze or sugar as a topping.")
        
        let doughnutHole = Donut(name: "Doughnut Holes", donutInfo: "Small, round doughnuts usually representing the hole missing from the regular doughnuts. Usually glazed or sugared. The best are chocolate covered sprinkled doughnut holes. Bite size sugay goodness!")
        
        let bostonCreme = Donut(name: "Boston Creme", donutInfo: "A round filled doughnut with a vanilla custard filling and a chocolate glaze on top. Made to resemble the Boston Creme pie.")
        
        let blueberry = Donut(name: "Blueberry", donutInfo: "The blueberry doughnut is a cake doughnut with a blueberry mix usually glazed in a light sugary topping.")
        
        let eclair = Donut(name: "Eclair", donutInfo: "An eclair is a pastry that's usually filled with a flavored cream and includes a sweet topping such as chocolate.")
        
        let chocolateCakeGlazed = Donut(name: "Chocolate Cake Glazed", donutInfo: "The chocolate cake glazed donut is made from a cake-like batter with chocolate flavor added in usually finished off with a glazed topping. ")
        
        let croissant = Donut(name: "Croissant", donutInfo: "The croissant is a buttery, flaky pastry made from yeast-leavened dough often found in doughnut shops around the world. Croissants are made by layering rolled dough giving it the well-known crescent shape and texture. Croissants are generally buttery in flavor and can include a filling or sweet topping. The croissant has been a staple in Austrian and French bakeries since the renaissance period.")
        
        //let kolache = Donut(name: "Kolache", donutInfo: "")
        
        let creamFilledDoughnut = Donut(name: "Cream-Filled Doughnut", donutInfo: "A douhgnut that has flavored cream in the middle instead of the normal ring shape. The cream is usually a sweet jelly or cream cheese.")
        
        let appleFritter = Donut(name: "Apple Fritter", donutInfo: "The apple fritter is usually made by tossing apple chunks into the doughnut batter. Usually irregularly shaped and glazed. Sometimes they may contain nuts or sugar and cinnamon on top.")
        
        let roll = Donut(name: "Rolled Pastries", donutInfo: "Donut shops often times offer cinnamon rolls or a variation. These are sometimes labeled as cinnamon buns. This pastry consist of rolled yeast-leavened dough with a mixture of cinnamon and sugar. Sometimes they may contain other ingredients such as raisins or pecans.")
        
        let israel = Donut(name: "Israeli Pastries", donutInfo: "I've spent a lot of time in Israel so I can speak from person experience about the delicious pastries Israel offers. Generally pastries are very similar across the Middle East. My favorite on this list and pictured above includes the babka. Babka is basically a cinnamon roll baked as a loaf of bread. Often times it includes chocolate chips or a chocolate spread in the mix. It has the crubmling texture of a croissant. Another delicious pastry found in Israel is the sufganiyot. This is Israel's version of the cream-filled doughnuts. One of my other favs is the rugelach. This is a croissant rolled in cinnamon, walnuts, and raisins with drizzled chocolate on top. Check out the link to Israeli pastries in the website section of this app for more info.")
        
        let costaRica = Donut(name: "Costa Rican Pastries", donutInfo: "Once again, I can speak from personal experience that Costa Rica has great pastries. Being rich in fresh produce Costa Rica is already strong in the breakfast game. Most pastry shops offer the normal menu items including waffles, bagels, various types of rolls, donuts, and croissant pastries. One of my favorite pastries found in Costa Rica as pictured above is the filled croissant. This is a simple croissant filled with chocolate, pineapple, mango, apple, or other flavors. It is usually sprinkled with chocolate or powdered sugar on top to add more sweetness. Since most retaurants are locally owned in Costa Rica you get more of a homemade feel with pastries there. This only adds to the delicious experience of pastries in Costa Rica!")
        
        return [doughnut, yeastDonut, cake, oldFashionedDonut, chocolateGlazed, powderedDoughnut, chocolateDoughnut, doughnutHole, bostonCreme, blueberry, eclair, chocolateCakeGlazed, creamFilledDoughnut, croissant, appleFritter, roll, israel, costaRica]
    }
    
}



