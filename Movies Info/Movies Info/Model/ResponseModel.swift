//
//  ResponseModel.swift
//  Movies Info
//
//  Created by Kushang  on 05/11/24.
//

import Foundation
import ObjectMapper

// API Response model
class Feed: Mappable {

    var author: Author?
    var entry: [Entry]?
    var updated: Updated?
    var rights: Rights?
    var title: Title?
    var icon: Icon?
    var link: [Link]?
    var id: Id?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        author <- map["author"]
        entry <- map["entry"]
        updated <- map["updated"]
        rights <- map["rights"]
        title <- map["title"]
        icon <- map["icon"]
        link <- map["link"]
        id <- map["id"]
    }
}

class Icon: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class Updated: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class Entry: Mappable {

    var imName: ImName?
    var rights: Rights?
    var imImage: [ImImage]?
    var summary: Summary?
    var imRentalPrice: ImRentalPrice?
    var imPrice: ImPrice?
    var imContentType: ImContentType?
    var title: Title?
    var link: [Link]?
    var id: Id?
    var imArtist: ImArtist?
    var category: Category?
    var imReleaseDate: ImReleaseDate?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        imName <- map["im:name"]
        rights <- map["rights"]
        imImage <- map["im:image"]
        summary <- map["summary"]
        imRentalPrice <- map["im:rentalPrice"]
        imPrice <- map["im:price"]
        imContentType <- map["im:contentType"]
        title <- map["title"]
        link <- map["link"]
        id <- map["id"]
        imArtist <- map["im:artist"]
        category <- map["category"]
        imReleaseDate <- map["im:releaseDate"]
    }
}

class ImReleaseDate: Mappable {

    var label: String?
    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
        attributes <- map["attributes"]
    }
}

class Category: Mappable {

    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        attributes <- map["attributes"]
    }
}

class ImArtist: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class Id: Mappable {

    var label: String?
    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
        attributes <- map["attributes"]
    }
}

class Link: Mappable {

    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        attributes <- map["attributes"]
    }
}

class Title: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class ImContentType: Mappable {

    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        attributes <- map["attributes"]
    }
}

class ImPrice: Mappable {

    var label: String?
    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
        attributes <- map["attributes"]
    }
}

class ImRentalPrice: Mappable {

    var label: String?
    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
        attributes <- map["attributes"]
    }
}

class Summary: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class ImImage: Mappable {

    var label: String?
    var attributes: Attributes?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
        attributes <- map["attributes"]
    }
}

class Attributes: Mappable {

    var height: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        height <- map["height"]
    }
}

class Rights: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class ImName: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class Author: Mappable {

    var name: Name?
    var uri: Uri?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        name <- map["name"]
        uri <- map["uri"]
    }
}

class Uri: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}

class Name: Mappable {

    var label: String?

    required init?(map: Map){
    }

    func mapping(map: Map) {
        label <- map["label"]
    }
}
