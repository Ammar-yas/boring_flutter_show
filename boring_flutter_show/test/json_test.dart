import 'package:boring_flutter_show/parse_json.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("parse topstories.json", () {
    const jsonString =
        "[26296339,26294552,26297040,26296845,26295100,26296315,26291145,26296870,26295065,26291215,26297009,26295435,26298022,26294693,26295792,26293171,26294386,26295177,26294972,26294397,26273813,26294096,26292166,26291402,26290955,26283742,26283343,26273866,26294052,26291705,26291756,26273428,26294588,26292744,26292786,26291975,26273874,26292781,26295774,26296318,26292310,26293943,26296915,26296397,26295875,26294259,26289591,26296649,26271117,26297407,26290705,26273670,26292299,26296825,26273169,26297771,26284635,26273027,26289933,26293172,26296516,26295071,26293347,26274314,26293424,26291420,26296289,26292687,26273030,26289621,26277602,26291819,26287879,26291211,26292660,26263508,26295629,26294508,26292427,26286194,26284087,26293457,26290324,26292235,26291126,26285687,26295832,26288749,26292704,26290223,26285926,26283984,26287728,26291970,26295848,26292832,26287948,26287527,26293703,26288772,26296669,26287868,26287811,26286734,26284158,26285655,26292666,26281103,26280266,26290252,26295414,26289200,26289245,26285645,26284982,26293190,26265872,26290565,26262038,26293079,26283385,26286991,26282433,26290309,26285144,26284294,26290174,26284618,26287590,26262465,26290343,26283651,26276179,26284529,26295210,26288387,26251143,26284630,26290851,26293692,26263149,26284782,26289552,26284976,26285683,26288080,26282213,26294500,26284750,26283208,26287381,26275091,26283348,26262170,26283637,26283650,26277501,26237404,26272084,26272529,26274516,26290718,26288708,26291438,26288713,26265999,26282828,26249236,26281689,26271851,26286862,26285178,26275289,26273925,26248123,26289080,26294481,26277396,26273735,26240581,26251567,26287535,26282966,26271388,26283535,26251060,26286772,26286015,26274466,26273340,26253281,26285185,26280357,26270251,26279468,26294215,26262989,26274698,26261675,26262077,26273594,26280808,26282742,26291644,26290634,26249380,26285843,26271800,26273960,26280664,26279630,26259955,26282119,26275400,26278241,26252010,26286940,26290383,26293891,26239711,26285894,26265603,26286861,26275488,26284449,26280130,26282500,26269832,26290128,26276520,26260390,26272368,26252348,26279372,26261314,26281823,26281108,26271743,26272825,26267891,26291399,26261337,26260710,26256459,26266881,26282771,26267322,26272092,26283841,26287825,26262213,26281864,26278052,26279744,26247348,26276449,26238376,26264257,26275071,26251322,26285456,26276023,26250809,26274618,26288454,26284669,26289224,26254991,26233683,26270957,26291321,26271582,26292374,26254785,26272170,26292294,26268460,26287081,26286146,26271045,26293050,26280845,26275553,26285780,26274450,26248595,26233736,26284161,26263085,26258773,26247278,26272642,26264378,26259834,26275754,26266289,26261327,26248571,26279891,26250929,26267216,26248668,26280727,26274358,26262148,26251337,26248980,26244829,26258081,26249143,26268528,26277386,26273273,26286306,26275335,26245563,26257839,26271470,26260235,26270042,26263942,26249254,26249366,26246049,26247052,26240339,26247871,26235414,26272492,26267707,26270013,26247954,26263264,26249175,26248603,26265957,26287704,26289994,26284382,26248003,26244093,26260524,26242495,26270182,26257264,26249242,26261341,26262653,26286958,26275370,26289827,26230732,26274667,26265024,26261098,26282216,26289349,26285527,26287908,26236325,26243495,26258417,26258610,26250504,26267529,26258695,26236910,26266570,26256726,26243964,26262687,26263408,26237368,26290759,26238262,26291577,26247260,26288201,26235812,26260174,26248002,26265528,26272062,26231418,26255325,26261310,26275976,26245550,26260165,26280141,26244281,26247813,26282202,26257982,26248349,26235820,26237823,26244528,26231920,26248600,26233244,26264045,26287938,26289439,26279330,26285158,26293826,26247933,26234540,26236450,26277493,26274022,26258073,26239975,26270046,26242264,26234154,26267966,26287437,26241780,26236908,26243116,26293181,26247266,26262192,26263342,26288841,26266420,26236739,26286217,26234614,26264992,26281528,26236772,26247299,26252373,26240901,26289793,26235896,26254955,26285858,26259007,26279784,26230992,26250800,26283309,26262150,26246116,26283608,26271324,26243139,26290702,26239151,26278631,26270207,26245502,26259712,26232600,26289424,26279362,26258261,26237048,26263829,26250972,26239231,26252809,26252472,26248134,26270292,26260127,26269812,26239236,26282829,26268433,26270995,26239156,26231212,26267476,26247821,26235860,26268666,26271001,26246619,26281891,26281871,26257959,26275863,26239068,26282951,26275638,26263097,26237886,26266159,26249262,26265329,26234384,26288615,26262743,26237231,26242337]";
    expect(parseTopStories(jsonString).first, 26296339);
  });

  test("parse item.json", () {
    const jsonString =
        '{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8958,8884,8887,8869,8940,8908,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}';

    expect(parseArticle(jsonString).by, "dhouston");
  });
}