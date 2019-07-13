/*
 Enums
 
 Exercises
 */

import UIKit


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getWeatherOpinion(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return "happy about it"
    case .wind(let speed) where speed < 10:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getWeatherOpinion(weather: .sun)
