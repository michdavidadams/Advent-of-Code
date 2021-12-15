//
//  linesOfVents.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/6/21.
//

import Foundation

let linesOfVentsTest = [[[0,9], [5,9]],
                        [[8,0], [0,8]],
                        [[9,4], [3,4]],
                        [[2,2], [2,1]],
                        [[7,0], [7,4]],
                        [[6,4], [2,0]],
                        [[0,9], [2,9]],
                        [[3,4], [1,4]],
                        [[0,0], [8,8]],
                        [[5,5], [8,2]]]

let linesOfVents = [[[217,490], [217,764]],[[44,270], [373,599]],[[440,139], [440,303]],[[161,663], [345,663]],[[848,963], [908,963]],[[299,207], [162,70]],[[77,346], [77,686]],[[693,743], [693,127]],[[96,459], [96,779]],[[864,39], [233,670]],[[58,79], [203,79]],[[158,596], [463,291]],[[633,293], [136,293]],[[656,474], [656,72]],[[148,754], [947,754]],[[535,780], [535,460]],[[821,701], [821,796]],[[592,200], [592,610]],[[620,786], [722,786]],[[632,731], [536,731]],[[825,640], [195,10]],[[956,547], [956,387]],[[25,32], [981,988]],[[870,613], [870,16]],[[369,780], [369,362]],[[348,924], [243,924]],[[28,114], [540,114]],[[702,690], [702,335]],[[836,442], [184,442]],[[602,11], [602,651]],[[76,988], [608,988]],[[15,922], [951,922]],[[363,18], [296,18]],[[130,580], [516,580]],[[799,335], [858,335]],[[571,842], [571,800]],[[684,654], [684,971]],[[815,674], [66,674]],[[575,612], [575,919]],[[652,126], [822,296]],[[391,493], [730,493]],[[810,479], [810,807]],[[397,420], [780,37]],[[187,740], [869,740]],[[175,626], [175,169]],[[773,901], [773,44]],[[45,130], [45,17]],[[226,253], [252,279]],[[481,928], [481,521]],[[121,506], [121,50]],[[306,386], [653,733]],[[115,635], [208,542]],[[619,67], [212,67]],[[82,79], [972,969]],[[15,20], [15,933]],[[606,136], [500,136]],[[791,250], [791,316]],[[128,931], [781,278]],[[11,365], [11,226]],[[705,326], [57,326]],[[778,632], [173,27]],[[121,624], [121,737]],[[30,815], [909,815]],[[18,114], [869,965]],[[554,741], [554,771]],[[284,826], [945,826]],[[386,654], [295,654]],[[235,848], [418,848]],[[536,59], [497,59]],[[156,922], [29,922]],[[57,718], [174,718]],[[964,774], [964,426]],[[729,950], [729,254]],[[896,117], [152,861]],[[603,919], [603,776]],[[176,472], [573,472]],[[25,970], [939,56]],[[478,482], [38,482]],[[155,936], [956,135]],[[351,621], [133,403]],[[513,323], [103,323]],[[679,167], [679,983]],[[910,456], [241,456]],[[16,266], [16,829]],[[338,791], [973,156]],[[564,73], [564,676]],[[196,800], [339,800]],[[15,776], [973,776]],[[719,134], [719,775]],[[730,692], [272,692]],[[247,770], [244,770]],[[853,720], [940,720]],[[685,379], [873,379]],[[944,647], [944,206]],[[67,974], [967,74]],[[828,194], [355,194]],[[596,522], [596,169]],[[677,970], [638,970]],[[587,427], [587,354]],[[804,488], [469,153]],[[355,653], [787,221]],[[798,873], [133,873]],[[565,798], [534,829]],[[239,273], [20,273]],[[942,138], [398,138]],[[499,743], [958,284]],[[913,466], [514,466]],[[504,705], [504,983]],[[455,863], [451,863]],[[638,255], [425,255]],[[338,724], [338,457]],[[147,880], [928,99]],[[11,955], [806,160]],[[566,961], [231,961]],[[870,560], [611,560]],[[714,925], [859,925]],[[484,946], [905,946]],[[112,394], [266,394]],[[191,728], [191,635]],[[983,806], [217,40]],[[575,286], [730,286]],[[366,323], [366,211]],[[383,990], [834,990]],[[834,976], [26,168]],[[819,492], [819,648]],[[257,522], [257,199]],[[756,176], [244,176]],[[165,199], [569,199]],[[896,943], [18,65]],[[986,642], [354,10]],[[864,381], [349,381]],[[177,982], [977,182]],[[458,254], [458,920]],[[550,322], [550,297]],[[956,748], [270,62]],[[412,305], [292,305]],[[201,571], [375,571]],[[608,139], [608,330]],[[646,718], [432,504]],[[449,325], [449,115]],[[315,971], [955,331]],[[248,143], [477,143]],[[956,858], [111,13]],[[776,608], [739,608]],[[44,842], [548,842]],[[590,487], [590,792]],[[978,127], [978,748]],[[620,948], [852,948]],[[67,403], [67,122]],[[340,256], [346,256]],[[803,58], [474,387]],[[876,448], [876,55]],[[78,288], [565,288]],[[235,80], [480,80]],[[949,880], [949,666]],[[529,734], [529,332]],[[780,973], [780,824]],[[900,279], [698,279]],[[290,438], [34,694]],[[766,569], [766,443]],[[729,690], [729,137]],[[72,938], [72,893]],[[960,563], [960,322]],[[669,293], [578,293]],[[396,388], [984,388]],[[675,694], [211,230]],[[152,743], [63,743]],[[203,660], [391,660]],[[582,806], [906,806]],[[698,837], [698,483]],[[869,320], [595,594]],[[283,817], [283,861]],[[919,926], [919,235]],[[16,64], [930,978]],[[980,25], [16,989]],[[181,890], [952,119]],[[877,731], [877,364]],[[130,55], [130,111]],[[30,298], [590,858]],[[134,933], [134,41]],[[711,853], [711,196]],[[123,206], [841,924]],[[130,585], [130,394]],[[161,952], [531,952]],[[455,830], [455,919]],[[612,817], [30,817]],[[461,474], [106,119]],[[511,100], [581,30]],[[263,550], [263,814]],[[976,973], [14,11]],[[749,876], [380,876]],[[731,226], [731,659]],[[630,682], [570,622]],[[914,780], [311,780]],[[975,274], [87,274]],[[328,957], [724,957]],[[357,950], [357,659]],[[466,580], [466,726]],[[854,425], [854,559]],[[39,106], [39,82]],[[675,711], [956,711]],[[204,117], [672,585]],[[867,101], [49,919]],[[849,88], [784,88]],[[394,249], [394,730]],[[865,188], [125,928]],[[316,918], [722,918]],[[781,336], [781,551]],[[821,826], [258,826]],[[597,273], [597,653]],[[726,266], [90,902]],[[701,701], [941,701]],[[105,401], [949,401]],[[890,486], [890,205]],[[651,409], [651,408]],[[450,88], [51,88]],[[29,478], [29,667]],[[676,293], [676,77]],[[380,773], [962,773]],[[253,836], [429,836]],[[833,706], [123,706]],[[689,167], [665,143]],[[375,540], [375,346]],[[867,222], [746,343]],[[99,832], [370,561]],[[133,349], [133,815]],[[950,981], [12,43]],[[195,466], [644,466]],[[84,876], [84,720]],[[128,237], [34,331]],[[872,947], [960,947]],[[641,220], [641,472]],[[489,950], [489,441]],[[508,513], [721,300]],[[394,137], [332,137]],[[456,672], [625,503]],[[65,463], [540,463]],[[207,745], [529,423]],[[948,888], [891,831]],[[39,642], [165,642]],[[20,228], [20,386]],[[706,50], [57,699]],[[66,736], [66,840]],[[944,450], [915,479]],[[697,988], [697,862]],[[987,969], [57,39]],[[64,813], [64,468]],[[814,85], [469,85]],[[667,749], [154,236]],[[755,337], [755,50]],[[536,185], [536,217]],[[732,48], [529,48]],[[33,578], [430,578]],[[511,658], [669,658]],[[294,352], [353,352]],[[109,937], [820,226]],[[465,346], [465,114]],[[878,965], [34,121]],[[259,933], [576,933]],[[240,750], [240,296]],[[567,633], [899,965]],[[29,609], [169,469]],[[962,532], [962,921]],[[443,875], [395,875]],[[831,584], [510,263]],[[859,35], [84,810]],[[829,285], [829,463]],[[486,661], [883,661]],[[371,672], [959,84]],[[722,532], [722,241]],[[49,216], [468,216]],[[308,343], [308,277]],[[183,626], [264,545]],[[748,611], [356,611]],[[67,85], [925,943]],[[726,972], [726,272]],[[841,222], [841,867]],[[597,250], [813,250]],[[20,631], [555,631]],[[803,846], [589,632]],[[276,654], [222,708]],[[400,952], [672,952]],[[939,173], [534,173]],[[638,316], [638,935]],[[578,120], [578,101]],[[54,457], [723,457]],[[904,713], [904,721]],[[902,180], [99,983]],[[590,426], [174,10]],[[740,975], [309,975]],[[84,242], [803,961]],[[28,667], [362,333]],[[73,703], [73,354]],[[902,26], [902,365]],[[602,455], [578,431]],[[339,686], [339,846]],[[764,444], [311,444]],[[780,535], [862,453]],[[333,127], [911,127]],[[451,296], [451,832]],[[849,681], [849,580]],[[309,672], [309,913]],[[339,411], [147,411]],[[907,478], [974,545]],[[444,753], [855,342]],[[642,285], [683,244]],[[307,633], [751,633]],[[292,128], [767,603]],[[969,92], [647,414]],[[80,120], [942,982]],[[886,810], [740,810]],[[205,846], [168,846]],[[878,230], [72,230]],[[186,822], [628,822]],[[472,66], [472,609]],[[251,753], [129,753]],[[575,959], [102,959]],[[582,194], [858,194]],[[43,986], [43,589]],[[355,402], [751,402]],[[982,292], [86,292]],[[329,966], [329,379]],[[475,291], [475,924]],[[625,70], [625,350]],[[358,467], [981,467]],[[319,700], [736,283]],[[657,247], [654,247]],[[450,803], [450,497]],[[812,15], [812,425]],[[649,160], [377,160]],[[684,491], [690,491]],[[925,429], [772,429]],[[138,91], [883,91]],[[602,121], [774,293]],[[700,531], [451,531]],[[250,216], [800,766]],[[550,784], [289,784]],[[53,759], [228,759]],[[678,310], [645,343]],[[147,70], [171,46]],[[130,653], [130,103]],[[292,640], [731,640]],[[797,762], [618,762]],[[154,75], [964,885]],[[222,523], [557,523]],[[989,103], [989,964]],[[335,61], [422,61]],[[782,954], [160,332]],[[82,929], [82,528]],[[732,540], [635,637]],[[950,362], [798,362]],[[415,566], [916,566]],[[588,446], [743,291]],[[495,46], [495,435]],[[913,561], [303,561]],[[788,902], [788,698]],[[81,783], [715,149]],[[867,990], [867,558]],[[145,919], [145,725]],[[850,861], [727,861]],[[535,129], [535,496]],[[922,772], [922,917]],[[882,559], [672,349]],[[496,80], [496,948]],[[915,244], [516,643]],[[633,461], [748,461]],[[899,341], [677,341]],[[66,981], [878,169]],[[68,24], [984,940]],[[12,880], [23,869]],[[779,514], [779,752]],[[878,641], [949,641]],[[264,919], [229,919]],[[213,281], [213,196]],[[538,149], [538,278]],[[184,478], [364,298]],[[301,136], [923,758]],[[559,266], [559,986]],[[384,37], [384,558]],[[815,529], [800,514]],[[33,80], [624,80]],[[561,261], [215,607]],[[169,944], [169,921]],[[673,42], [164,42]],[[820,977], [424,581]],[[816,29], [802,29]],[[374,924], [121,671]],[[962,555], [426,19]],[[982,199], [860,77]],[[334,62], [359,62]],[[960,785], [260,85]],[[681,280], [860,280]],[[184,925], [184,30]],[[332,398], [858,924]],[[405,270], [218,270]],[[261,846], [29,614]],[[591,941], [591,716]],[[313,502], [313,637]],[[930,259], [779,259]],[[432,15], [566,149]],[[51,182], [223,182]],[[603,536], [603,281]],[[139,703], [825,17]],[[965,22], [55,932]],[[389,608], [771,608]],[[209,617], [923,617]],[[769,672], [769,236]],[[163,717], [638,717]],[[801,604], [136,604]],[[974,881], [110,17]],[[187,226], [929,968]],[[430,949], [473,949]],[[899,279], [899,224]],[[964,806], [964,876]],[[635,190], [349,190]],[[142,656], [142,216]],[[740,814], [35,109]],[[588,956], [534,956]],[[107,968], [707,968]],[[787,639], [787,50]],[[964,491], [964,148]],[[30,70], [30,323]],[[30,905], [806,129]],[[592,419], [91,419]],[[73,87], [973,987]],[[540,683], [540,139]],[[422,107], [422,90]],[[935,74], [935,590]],[[728,566], [188,26]],[[839,313], [839,620]],[[723,898], [723,719]],[[679,814], [679,617]],[[203,633], [417,633]],[[36,812], [546,302]],[[112,316], [598,802]],[[798,773], [989,964]],[[914,69], [520,69]],[[213,556], [213,19]],[[795,516], [795,220]],[[348,803], [664,803]],[[910,861], [238,189]],[[633,691], [594,691]],[[96,166], [96,60]],[[278,848], [854,272]],[[64,370], [64,815]],[[386,196], [386,222]],[[888,330], [888,834]],[[166,482], [37,482]],[[594,283], [594,865]],[[515,267], [515,448]],[[707,279], [239,747]],[[302,745], [302,268]],[[210,830], [885,155]],[[592,180], [592,324]],[[245,154], [245,613]],[[607,954], [545,954]],[[854,951], [19,116]],[[77,878], [963,878]],[[759,585], [759,892]],[[750,918], [750,130]],[[62,716], [329,983]],[[785,880], [785,590]],[[318,794], [318,599]],[[403,547], [719,863]],[[742,803], [742,937]],[[680,579], [680,425]],[[268,404], [826,962]],[[425,959], [710,959]],[[406,823], [976,253]],[[359,361], [165,361]],[[276,861], [657,480]],[[74,260], [743,929]],[[194,129], [194,651]],[[879,835], [65,21]],[[16,977], [980,13]],[[538,525], [624,439]],[[985,789], [985,510]],[[699,850], [560,711]],[[301,48], [477,224]],[[28,938], [905,61]],[[844,530], [793,530]],[[286,325], [936,975]],[[368,122], [677,431]],[[924,153], [924,774]],[[783,498], [783,148]],[[250,392], [578,392]],[[465,345], [573,345]],[[860,763], [860,40]],[[373,226], [599,226]],[[169,562], [169,292]],[[408,123], [569,123]],[[510,396], [733,396]],[[199,20], [199,770]],[[892,631], [237,631]],[[671,863], [705,863]],[[141,530], [141,630]],[[467,159], [367,159]],[[729,501], [255,975]],[[578,871], [578,225]],[[821,363], [821,820]]]
