//
//  LaunchLoader.swift
//  SpaceX
//
//  Created by Григорий Душин on 07.10.2022.
//

import Foundation


    // MARK: - LaunchElement
    class LaunchModelElement: Codable {
        let fairings: Fairings?
        let links: Links
        let staticFireDateUTC: String?
        let staticFireDateUnix: Int?
        let net: Bool
        let window: Int?
        let rocket: Rocket
        let success: Bool?
        let failures: [Failure]
        let details: String?
        let crew, ships, capsules, payloads: [String]
        let launchpad: Launchpad
        let flightNumber: Int
        let name, dateUTC: String
        let dateUnix: Int
        let dateLocal: Date
        let datePrecision: DatePrecision
        let upcoming: Bool
        let cores: [Core]
        let autoUpdate, tbd: Bool
        let launchLibraryID: String?
        let id: String

        enum CodingKeys: String, CodingKey {
            case fairings, links
            case staticFireDateUTC
            case staticFireDateUnix
            case net, window, rocket, success, failures, details, crew, ships, capsules, payloads, launchpad
            case flightNumber
            case name
            case dateUTC
            case dateUnix
            case dateLocal
            case datePrecision
            case upcoming, cores
            case autoUpdate
            case tbd
            case launchLibraryID
            case id
        }

        init(fairings: Fairings?, links: Links, staticFireDateUTC: String?, staticFireDateUnix: Int?, net: Bool, window: Int?, rocket: Rocket, success: Bool?, failures: [Failure], details: String?, crew: [String], ships: [String], capsules: [String], payloads: [String], launchpad: Launchpad, flightNumber: Int, name: String, dateUTC: String, dateUnix: Int, dateLocal: Date, datePrecision: DatePrecision, upcoming: Bool, cores: [Core], autoUpdate: Bool, tbd: Bool, launchLibraryID: String?, id: String) {
            self.fairings = fairings
            self.links = links
            self.staticFireDateUTC = staticFireDateUTC
            self.staticFireDateUnix = staticFireDateUnix
            self.net = net
            self.window = window
            self.rocket = rocket
            self.success = success
            self.failures = failures
            self.details = details
            self.crew = crew
            self.ships = ships
            self.capsules = capsules
            self.payloads = payloads
            self.launchpad = launchpad
            self.flightNumber = flightNumber
            self.name = name
            self.dateUTC = dateUTC
            self.dateUnix = dateUnix
            self.dateLocal = dateLocal
            self.datePrecision = datePrecision
            self.upcoming = upcoming
            self.cores = cores
            self.autoUpdate = autoUpdate
            self.tbd = tbd
            self.launchLibraryID = launchLibraryID
            self.id = id
        }
    }

   
    // MARK: - Core
    class Core: Codable {
        let core: String?
        let flight: Int?
        let gridfins, legs, reused, landingAttempt: Bool?
        let landingSuccess: Bool?
        let landingType: LandingType?
        let landpad: Landpad?

        enum CodingKeys: String, CodingKey {
            case core, flight, gridfins, legs, reused
            case landingAttempt
            case landingSuccess
            case landingType
            case landpad
        }

        init(core: String?, flight: Int?, gridfins: Bool?, legs: Bool?, reused: Bool?, landingAttempt: Bool?, landingSuccess: Bool?, landingType: LandingType?, landpad: Landpad?) {
            self.core = core
            self.flight = flight
            self.gridfins = gridfins
            self.legs = legs
            self.reused = reused
            self.landingAttempt = landingAttempt
            self.landingSuccess = landingSuccess
            self.landingType = landingType
            self.landpad = landpad
        }
    }

    enum LandingType: String, Codable {
        case asds = "ASDS"
        case ocean = "Ocean"
        case rtls = "RTLS"
    }

    enum Landpad: String, Codable {
        case the5E9E3032383Ecb267A34E7C7 = "5e9e3032383ecb267a34e7c7"
        case the5E9E3032383Ecb554034E7C9 = "5e9e3032383ecb554034e7c9"
        case the5E9E3032383Ecb6Bb234E7CA = "5e9e3032383ecb6bb234e7ca"
        case the5E9E3032383Ecb761634E7Cb = "5e9e3032383ecb761634e7cb"
        case the5E9E3032383Ecb90A834E7C8 = "5e9e3032383ecb90a834e7c8"
        case the5E9E3033383Ecb075134E7CD = "5e9e3033383ecb075134e7cd"
        case the5E9E3033383Ecbb9E534E7Cc = "5e9e3033383ecbb9e534e7cc"
    }

    enum DatePrecision: String, Codable {
        case day = "day"
        case hour = "hour"
        case month = "month"
    }


    // MARK: - Failure
    class Failure: Codable {
        let time: Int
        let altitude: Int?
        let reason: String

        init(time: Int, altitude: Int?, reason: String) {
            self.time = time
            self.altitude = altitude
            self.reason = reason
        }
    }

    // MARK: - Fairings
    class Fairings: Codable {
        let reused, recoveryAttempt, recovered: Bool?
        let ships: [String]

        enum CodingKeys: String, CodingKey {
            case reused
            case recoveryAttempt
            case recovered, ships
        }

        init(reused: Bool?, recoveryAttempt: Bool?, recovered: Bool?, ships: [String]) {
            self.reused = reused
            self.recoveryAttempt = recoveryAttempt
            self.recovered = recovered
            self.ships = ships
        }
    }

    enum Launchpad: String, Codable {
        case the5E9E4501F509094Ba4566F84 = "5e9e4501f509094ba4566f84"
        case the5E9E4502F509092B78566F87 = "5e9e4502f509092b78566f87"
        case the5E9E4502F509094188566F88 = "5e9e4502f509094188566f88"
        case the5E9E4502F5090995De566F86 = "5e9e4502f5090995de566f86"
    }


    // MARK: - Links
    class Links: Codable {
        let patch: Patch
        let reddit: Reddit
        
        let presskit: String?
        let webcast: String?
        let youtubeID: String?
        let article: String?
        let wikipedia: String?

        enum CodingKeys: String, CodingKey {
            case patch, reddit,  presskit, webcast
            case youtubeID
            case article, wikipedia
        }

        init(patch: Patch, reddit: Reddit, presskit: String?, webcast: String?, youtubeID: String?, article: String?, wikipedia: String?) {
            self.patch = patch
            self.reddit = reddit
            self.presskit = presskit
            self.webcast = webcast
            self.youtubeID = youtubeID
            self.article = article
            self.wikipedia = wikipedia
        }
    }

   
    // MARK: - Patch
    class Patch: Codable {
        let small, large: String?

        init(small: String?, large: String?) {
            self.small = small
            self.large = large
        }
    }


    // MARK: - Reddit
    class Reddit: Codable {
        let campaign: String?
        let launch: String?
        let media, recovery: String?

        init(campaign: String?, launch: String?, media: String?, recovery: String?) {
            self.campaign = campaign
            self.launch = launch
            self.media = media
            self.recovery = recovery
        }
    }

    enum Rocket: String, Codable {
        case the5E9D0D95Eda69955F709D1Eb = "5e9d0d95eda69955f709d1eb"
        case the5E9D0D95Eda69973A809D1Ec = "5e9d0d95eda69973a809d1ec"
        case the5E9D0D95Eda69974Db09D1Ed = "5e9d0d95eda69974db09d1ed"
    }

    

  
