//
//  MockMovies.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import Foundation

let movie0 = Movie(title: "Hai Phuong", poster: "https://2sao.vietnamnetjsc.vn/images/2018/12/07/21/03/Hai-Phuong-4.JPG", categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"])
let movie1 = Movie(title: "The 8th night", poster: "https://k-popped.com/kpopped2012/wp-content/uploads/2021/06/The-8th-Night_Main_Ensemble_Vertical_RGB_PRE_EN-UK-600x889.jpg?0ec627&0ec627", categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"])
let movie2 = Movie(title: "Imperial Dreams", poster: "https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426", categories: ["Exciting", "Thrillers", "Horror", "Drama"])
let movie3 = Movie(title: "Marriage Story", poster: "https://i.pinimg.com/originals/d1/3a/d5/d13ad50397ecbb4144d6a714846d0415.png", categories: ["Drama", "Comedy", "Fantasy", "Mystery"])
let movie4 = Movie(title: "Bird Box", poster: "https://static1.showtimes.com/poster/660x980/bird-box-netflix-132390.jpg", categories: ["Drama", "Disaster Thriller", "Western", "Crime Thriller"])
let movie5 = Movie(title: "Stranger Things", poster: "https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/38/1506062373-stranger-things-goonies-poster.jpg?resize=480:*", categories: ["Drama", "War and Military Action", "Mystery", "Romance"])
let movie6 = Movie(title: "Extinction", poster: "https://i.pinimg.com/originals/e2/f8/2b/e2f82b45c8d9ab8857dd9b4109c447de.jpg", categories: ["Drama", "War and Military Action", "Martial Arts Action", "Romance"])

let movie7 = Movie(title: "Crash landing on you", poster: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mv5bmdywndmzndatywjhzi00odvkltllngmtmjm4zja1owi2mjgzxkeyxkfqcgdeqxvymtmxodk2otuat-v1-1581356234.jpg", categories:  ["Drama", "Disaster Thriller", "Western", "Crime Thriller"])
let movie8 = Movie(title: "Girl from nowhere", poster: "https://m.media-amazon.com/images/M/MV5BYzZjOTg3MWQtMjE0NC00ZGJhLTg3NzAtNWRlZmY2Y2QwYTYyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg", categories: ["Exciting", "Sci-Fi TV", "Action", "Drama"])
let movie9 = Movie(title: "Vagabond", poster: "https://i.pinimg.com/736x/00/5c/57/005c570b158c5e45fa5601dace1b394d.jpg", categories: ["Drama", "War and Military Action", "Mystery", "Romance"])
let movie10 = Movie(title: "Vagabond", poster: "https://i.pinimg.com/736x/00/5c/57/005c570b158c5e45fa5601dace1b394d.jpg", categories:  ["Drama", "War and Military Action", "Martial Arts Action", "Romance"])


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
