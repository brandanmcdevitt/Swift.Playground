/*
 Polymorphism and Typecasting
 
 Exercises
 */

import UIKit


class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots."
    }
}

class studioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots."
    }
}

class liveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots."
    }
}

var taylorSwift = studioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = studioAlbum(name: "Fearless", studio: "Aimeeland Studios")
var iTunesLive = liveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? studioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? liveAlbum {
        print(liveAlbum.location)
    }
}
