//
//  CoinModel.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

//

/*
 URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en
 RESPONSE:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 28034,
     "market_cap": 543472813499,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 588694746001,
     "total_volume": 11595535490,
     "high_24h": 28355,
     "low_24h": 27130,
     "price_change_24h": 819.83,
     "price_change_percentage_24h": 3.01248,
     "market_cap_change_24h": 15949465357,
     "market_cap_change_percentage_24h": 3.02346,
     "circulating_supply": 19386837,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -59.39801,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 41241.93558,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-05-29T06:43:18.735Z",
     "sparkline_in_7d": {
       "price": [
         26763.045904653056,
         26842.269738155013,
         26850.318264894708,
         26860.251542146107,
         26859.640740225765,
         26829.670677433314,
         26813.417866765652,
         26748.186199516895,
         27027.27277363167,
         26945.79976118438,
         26882.201645157253,
         26868.155468374833,
         26858.24442397089,
         26888.514445747012,
         26850.46340814087,
         26870.652378156145,
         26912.917102663214,
         26880.12260504616,
         26862.594876879677,
         26901.503770153227,
         27069.1155538982,
         27050.58189923086,
         27350.217998855227,
         27396.695219130637,
         27416.564946062732,
         27305.095919235962,
         27270.823099174235,
         27334.84596512159,
         27292.209782727867,
         27292.62052373694,
         27335.94345232066,
         27285.695723197812,
         27227.265705951973,
         27304.29366233824,
         27309.80686389815,
         27250.604759718233,
         27191.58486360124,
         27158.630583784463,
         27190.686908928994,
         27224.642562384503,
         27207.34009973233,
         27198.711749279388,
         27221.80881877772,
         27153.235050992225,
         27151.503822695537,
         27163.216088672114,
         26763.117941537657,
         26803.47147521241,
         26782.118909976758,
         26725.091583340374,
         26668.30104178187,
         26734.044072188557,
         26763.747024986726,
         26726.39155402606,
         26722.509636323703,
         26709.963607877304,
         26425.669930827025,
         26309.900063029883,
         26323.102008002985,
         26231.945802655784,
         26317.91235885678,
         26264.50178059414,
         26276.319770528127,
         26404.48651943474,
         26365.12546328932,
         26340.45630729319,
         26338.948946998687,
         26248.12574345076,
         26079.68500137164,
         26096.178914732747,
         26194.84512270826,
         26208.853300949522,
         26249.65927178691,
         26257.65628755252,
         26147.335552541004,
         26221.010345833183,
         26255.51370359313,
         26230.1513346864,
         26247.910007820297,
         26377.526969250634,
         26327.107511826376,
         26372.015091151763,
         26240.92702490415,
         26269.858807970137,
         26364.814718720372,
         26353.218397900157,
         26468.220932098568,
         26484.298196791224,
         26451.688606439933,
         26454.73882889709,
         26475.607902534273,
         26446.494079635904,
         26400.775839028774,
         26424.11506587157,
         26448.296157391003,
         26423.03593682665,
         26376.605912040013,
         26407.500175486333,
         26506.61669564772,
         26488.833462603932,
         26441.725287911588,
         26461.534422252324,
         26484.840277702377,
         26417.883959571704,
         26591.92789854307,
         26777.16115864747,
         26790.13274626039,
         26799.210349074743,
         26720.583058928234,
         26724.459026197546,
         26791.219265305197,
         26752.226588846883,
         26737.24485206244,
         26721.830974310666,
         26717.987553571777,
         26658.476144410175,
         26707.581444810174,
         26739.8982843455,
         26756.284322167794,
         26786.092240466696,
         26748.944532597045,
         26726.37675098422,
         26731.81321207389,
         26692.171938684784,
         26738.0821319824,
         26692.99615889232,
         26705.367602384606,
         26726.28159463058,
         26716.03310669933,
         26675.889819810247,
         26673.344566915766,
         26651.589575648137,
         26751.033463576437,
         26776.74038880105,
         26749.810046430648,
         26751.57313180554,
         26755.075300832577,
         26807.461818388703,
         26848.23993959246,
         26930.294362738154,
         27100.9524667343,
         27093.07518247268,
         27169.81174531717,
         27200.647564406896,
         27151.359305447324,
         27213.15867120192,
         27217.527880420177,
         27205.015720375173,
         27162.440369507072,
         27221.81185849482,
         27176.964309350726,
         27141.532758187983,
         27193.239134093164,
         27198.295785811508,
         27264.338482932697,
         27253.844445771825,
         27325.71254764546,
         27605.666394976128,
         27500.148193214638,
         27569.552185426568,
         27842.862323957448,
         28068.444453786284,
         28096.11354746495,
         28253.251674344636,
         28172.549716815785,
         28120.584632076137,
         28041.732033228538,
         27866.793873175742
       ]
     },
     "price_change_percentage_24h_in_currency": 3.012478821858619
   }
*/

import Foundation



struct CoinModel:Identifiable, Codable {
    let id: String?
    let symbol: String?
    let name: String?
    let image: String?
    let currentPrice: Int?
    let marketCap: Int?
    let marketCapRank: Int?
    let fullyDilutedValuation: Int?
    let totalVolume: Int?
    let high24H: Int?
    let low24H: Int?
    let priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Int?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply: Int?
    let totalSupply: Int?
    let maxSupply: Int?
    let ath: Int?
    let athChangePercentage: Double?
    let athDate: String?
    let atl: Double?
    let atlChangePercentage: Double?
    let atlDate: String?
    
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case symbol = "symbol"
        case name = "name"
        case image = "image"
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath = "ath"
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl = "atl"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?

    enum CodingKeys: String, CodingKey {
        case price = "price"
    }
}
