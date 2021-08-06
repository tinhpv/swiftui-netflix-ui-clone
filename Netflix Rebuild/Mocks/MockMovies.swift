//
//  MockMovies.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import Foundation

let trailer0 = Trailer(name: "Imperial Dreams trailer #1",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fnetflixlife.com%2Ffiles%2F2017%2F02%2FID_00097-1.jpg")
let trailer1 = Trailer(name: "Imperial Dreams trailer #2",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://imagesmtv-a.akamaihd.net/uri/mgid:ao:image:mtv.com:221221?height=1450&width=2577&format=jpg&quality=.7")
let trailer2 = Trailer(name: "Imperial Dreams trailer #3",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://occ-0-2705-999.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABfswP-5_8HdhsKYpl6Bl0N5RgeDdT-ZdqqHerIYeyESL9IC11F99APWvg-YzOFOM23bAqiAvSSazg66CO22xP2kf08OI.jpg?r=75d")
let trailer3 = Trailer(name: "Imperial Dreams trailer #4",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://s1.dmcdn.net/v/J1N7z1VtKT0TdfX0U/x720")
let trailer4 = Trailer(name: "Imperial Dreams trailer #5",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDls8ym_Abo8Mk7U3Srg3_NlZl1nK71e0wPR8z-pYWIlqT1o1DegSbxRdn9tAzveSVj_A&usqp=CAU")
let trailer5 = Trailer(name: "Imperial Dreams trailer #6",
                       videoUrl: "https://youtu.be/cU9hB_Y-zUw",
                       thumbnailUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAT1TbgXNzzisaJLw56vBVK1pwVyPhv-hojw&usqp=CAU")
let trailerList = [
    trailer0,
    trailer1,
    trailer2,
    trailer3,
    trailer4,
    trailer5
]


let movie0 = Movie(title: "Hai Phuong",
                   poster: "https://2sao.vietnamnetjsc.vn/images/2018/12/07/21/03/Hai-Phuong-4.JPG",
                   categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"],
                   year: 2018, rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie1 = Movie(title: "The 8th night",
                   poster: "https://k-popped.com/kpopped2012/wp-content/uploads/2021/06/The-8th-Night_Main_Ensemble_Vertical_RGB_PRE_EN-UK-600x889.jpg?0ec627&0ec627",
                   categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie2 = Movie(title: "Imperial Dreams",
                   poster: "https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426",
                   categories: ["Exciting", "Thrillers", "Horror", "Drama"],
                   year: 2018, rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie3 = Movie(title: "Marriage Story",
                   poster: "https://i.pinimg.com/originals/d1/3a/d5/d13ad50397ecbb4144d6a714846d0415.png",
                   categories: ["Drama", "Comedy", "Fantasy", "Mystery"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie4 = Movie(title: "Bird Box",
                   poster: "https://static1.showtimes.com/poster/660x980/bird-box-netflix-132390.jpg",
                   categories: ["Drama", "Disaster Thriller", "Western", "Crime Thriller"],
                   year: 2018, rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie5 = Movie(title: "Stranger Things",
                   poster: "https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/38/1506062373-stranger-things-goonies-poster.jpg?resize=480:*",
                   categories: ["Drama", "War and Military Action", "Mystery", "Romance"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie6 = Movie(title: "Extinction",
                   poster: "https://i.pinimg.com/originals/e2/f8/2b/e2f82b45c8d9ab8857dd9b4109c447de.jpg",
                   categories: ["Drama", "War and Military Action", "Martial Arts Action", "Romance"],
                   year: 2018, rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie7 = Movie(title: "Crash landing on you",
                   poster: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mv5bmdywndmzndatywjhzi00odvkltllngmtmjm4zja1owi2mjgzxkeyxkfqcgdeqxvymtmxodk2otuat-v1-1581356234.jpg",
                   categories:  ["Drama", "Disaster Thriller", "Western", "Crime Thriller"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie8 = Movie(title: "Girl from nowhere",
                   poster: "https://m.media-amazon.com/images/M/MV5BYzZjOTg3MWQtMjE0NC00ZGJhLTg3NzAtNWRlZmY2Y2QwYTYyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg",
                   categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie9 = Movie(title: "Vagabond",
                   poster: "https://i.pinimg.com/736x/00/5c/57/005c570b158c5e45fa5601dace1b394d.jpg",
                   categories: ["Drama", "War and Military Action", "Mystery", "Romance"],
                   year: 2018,
                   rating: "TV-MA",
                   numberOfEpisodes: 1,
                   similarMovies: [])
let movie10 = Movie(title: "Vagabond",
                    poster: "https://i.pinimg.com/736x/00/5c/57/005c570b158c5e45fa5601dace1b394d.jpg",
                    categories:  ["Drama", "War and Military Action", "Martial Arts Action", "Romance"],
                    year: 2018,
                    rating: "TV-MA",
                    numberOfEpisodes: 1,
                    similarMovies: [])

let episode1 = Episode(name: "Pilot",
                       thumbnailUrlString: "https://64.media.tumblr.com/0ce3c3f06d75cc1730c36fd275e2b8d6/tumblr_o180dzOsen1tcxkqzo2_540.png",
                       description: "Vix ea recusabo consulatu. Ut putant omnium mandamus nam, vix an habemus accumsan. Pro laudem vocibus no, nec et sint option detracto, at aeque antiopam sea. Gloriatur voluptatum at eos, tation percipitur vel ut, recteque interesset ne per.",
                       length: 44)
let episode2 = Episode(name: "Allen",
                       thumbnailUrlString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi8OhvepTZn68P_cSgiS3QnzrzMZTim_GQfy-SPTnZgmHb4k2rPsDp6d6C_9N_kwUcJG4&usqp=CAU",
                       description: "Vix ea recusabo consulatu. Ut putant omnium mandamus nam, vix an habemus accumsan. Pro laudem vocibus no, nec et sint option detracto, at aeque antiopam sea. Gloriatur voluptatum at eos, tation percipitur vel ut, recteque interesset ne per.",
                       length: 44)
let episode3 = Episode(name: "Tough",
                       thumbnailUrlString: "https://tickets.cafilm.org/images/user/cfi_2450/imperialdreams_tkt.jpg",
                       description: "Vix ea recusabo consulatu. Ut putant omnium mandamus nam, vix an habemus accumsan. Pro laudem vocibus no, nec et sint option detracto, at aeque antiopam sea. Gloriatur voluptatum at eos, tation percipitur vel ut, recteque interesset ne per.",
                       length: 44)
let episode4 = Episode(name: "Poison",
                       thumbnailUrlString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6wyr2XRU-M6TY4dN4qELd7D2wuqH5AiSWJNzPgh1HR3SK0sgyYMdzFYYLXez02CaGG2s&usqp=CAU",
                       description: "Vix ea recusabo consulatu. Ut putant omnium mandamus nam, vix an habemus accumsan. Pro laudem vocibus no, nec et sint option detracto, at aeque antiopam sea. Gloriatur voluptatum at eos, tation percipitur vel ut, recteque interesset ne per.",
                       length: 44)
let episode5 = Episode(name: "Riots, Drills and the Devil",
                       thumbnailUrlString: "https://i.ytimg.com/vi/wKpztG_fViI/maxresdefault.jpg",
                       description: "Vix ea recusabo consulatu. Ut putant omnium mandamus nam, vix an habemus accumsan. Pro laudem vocibus no, nec et sint option detracto, at aeque antiopam sea. Gloriatur voluptatum at eos, tation percipitur vel ut, recteque interesset ne per.",
                       length: 44)

let episodeList = [
    episode1,
    episode2,
    episode3,
    episode4,
    episode5,
].shuffled()

let similarMovies = [
    movie1,
    movie2,
    movie3,
    movie4,
    movie5,
    movie6,
    movie7,
    movie8,
    movie9,
    movie10
].shuffled()

let mockMovieList: [Movie] = [
    movie1,
    movie2,
    movie3,
    movie4,
    movie5,
    movie6
]

let asianMockMovieList: [Movie] = [
    movie7,
    movie8,
    movie9,
    movie10
]

let popularMockMovieList: [Movie] = [
    movie8,
    movie5,
    movie7,
    movie9,
    movie10
]

let actionMovie: [Movie] = [
    movie2,
    movie4,
    movie6,
    movie9,
    movie10
]
