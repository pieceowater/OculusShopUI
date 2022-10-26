//
//  ItemsData.swift
//  VRShop
//
//  Created by yury mid on 25.10.2022.
//

import Foundation

struct item: Hashable{
    let name: String
    let image: String
    let price: Int
    let description: String
}

let itemsData: [item] = [
    item(name: "Oculus QUEST", image: "Subject1", price: 300, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquet, tortor non auctor maximus, ante leo viverra erat, id bibendum est augue vitae felis. Nunc luctus ultrices ipsum, vitae molestie tellus pulvinar et. Maecenas fermentum, nulla et viverra ornare, augue est malesuada tortor, convallis egestas nunc eros eget ante. Mauris in venenatis ipsum. In cursus orci mi, et venenatis purus bibendum vulputate. Duis tempus velit ut vulputate molestie. Ut eu arcu vel lacus suscipit interdum ut ac mi. Maecenas erat lacus, blandit bibendum congue non, rhoncus id lectus. Ut porttitor rhoncus justo. Nam tempus sodales lectus, mollis venenatis urna euismod eget. Nulla dapibus lorem ultrices lectus rhoncus rhoncus."),
    item(name: "Oculus QUEST PRO", image: "Subject2", price: 400, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquet, tortor non auctor maximus, ante leo viverra erat, id bibendum est augue vitae felis. Nunc luctus ultrices ipsum, vitae molestie tellus pulvinar et. Maecenas fermentum, nulla et viverra ornare, augue est malesuada tortor, convallis egestas nunc eros eget ante. Mauris in venenatis ipsum. In cursus orci mi, et venenatis purus bibendum vulputate. Duis tempus velit ut vulputate molestie. Ut eu arcu vel lacus suscipit interdum ut ac mi. Maecenas erat lacus, blandit bibendum congue non, rhoncus id lectus."),
    item(name: "Oculus QUEST 2", image: "Subject3", price: 340, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquet, tortor non auctor maximus, ante leo viverra erat, id bibendum est augue vitae felis. Nunc luctus ultrices ipsum, vitae molestie tellus pulvinar et. Maecenas fermentum, nulla et viverra ornare, augue est malesuada tortor, convallis egestas nunc eros eget ante. Mauris in venenatis ipsum. In cursus orci mi, et venenatis purus bibendum vulputate. Duis tempus velit ut vulputate molestie. Ut eu arcu vel lacus suscipit interdum non, rhoncus id rhoncus.")
]
