//
//  WebsiteController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class WebsiteListController {
    
    static var websiteList: [Website] {
        
        let pintrest = Website(name: "Donut Recipes", website: "http://allrecipes.com/recipes/355/bread/pastries/doughnuts/", webDescription: "Here is a link to some great donut ideas on the site allrecipes.com. This website has recipes for just about any donut you can imagine. You'll get hungry just looking through them!")
        
        let donutDay = Website(name: "National Donut Day", website: "http://donutdayusa.com", webDescription: "This link takes you to the official National Donut Day site that has all the latest info one of America's best holidays!")
        
        let buzzfeed = Website(name: "Best Doughnut Shops", website: "https://www.buzzfeed.com/michelleno/the-best-doughnut-shop-in-every-state-according-to-yelp?utm_term=.pwMElzmKb#.fd4W1gOZo", webDescription: "Ever wonder what the top ranked donut shop is in your state? Well wonder no more! This link shows you the favorite donut shops in each state. Even though this may be up for debate this list won't let you down!")
        
        let spelling = Website(name: "Donut vs. Doughnut", website: "http://grammarist.com/spelling/doughnut-donut/", webDescription: "Is it donut or doughnut? This link will help answer your question.")
        
        return [pintrest, donutDay, buzzfeed, spelling]
        
    }
    
    
}
