import 'package:date_format/date_format.dart';

const String calenderAppAssetBase = "assets/months/";

// arr of months
final List<String> monthsImgList = [
  "${calenderAppAssetBase}jan_2026.jpg",
  "${calenderAppAssetBase}feb_2026.jpg",
  "${calenderAppAssetBase}march_2026.jpg",
  "${calenderAppAssetBase}april_2026.jpg",
  "${calenderAppAssetBase}may_2026.jpg",
  "${calenderAppAssetBase}june_2026.jpg",
  "${calenderAppAssetBase}july_2026.jpg",
  "${calenderAppAssetBase}aug_2026.jpg",
  "${calenderAppAssetBase}sept_2026.jpg",
  "${calenderAppAssetBase}oct_2026.jpg",
  "${calenderAppAssetBase}nov_2026.jpg",
  "${calenderAppAssetBase}dec_2026.jpg",
];

// month and year title in marathi
const String dateTitlePrefix = "आजची तारीख - ";
const String titleJanuary = " जानेवारी २०२६";
const String titleFebruary = " फेब्रुवारी २०२६";
const String titleMarch = " मार्च २०२६";
const String titleApril = " एप्रिल २०२६";
const String titleMay = " मे २०२६";
const String titleJune = " जून २०२६";
const String titleJuly = " जुलै २०२६";
const String titleAugust = " ऑगस्ट २०२६";
const String titleSeptember = " सप्टेंबर २०२६";
const String titleOctober = " ऑक्टोबर २०२६";
const String titleNovember = " नोव्हेंबर २०२६";
const String titleDecember = " डिसेंबर २०२६";

String currentDate = "";
int currentMonthIndex = 0;

String getDayStr(String formattedDay) {
  if (formattedDay == "01") {
    return "१";
  } else if (formattedDay == "02") {
    return "२";
  } else if (formattedDay == "03") {
    return "३";
  } else if (formattedDay == "04") {
    return "४";
  } else if (formattedDay == "05") {
    return "५";
  } else if (formattedDay == "06") {
    return "६";
  } else if (formattedDay == "07") {
    return "७";
  } else if (formattedDay == "08") {
    return "८";
  } else if (formattedDay == "09") {
    return "९";
  } else if (formattedDay == "10") {
    return "१०";
  } else if (formattedDay == "11") {
    return "११";
  } else if (formattedDay == "12") {
    return "१२";
  } else if (formattedDay == "13") {
    return "१३";
  } else if (formattedDay == "14") {
    return "१४";
  } else if (formattedDay == "15") {
    return "१५";
  } else if (formattedDay == "16") {
    return "१६";
  } else if (formattedDay == "17") {
    return "१७";
  } else if (formattedDay == "18") {
    return "१८";
  } else if (formattedDay == "19") {
    return "१९";
  } else if (formattedDay == "20") {
    return "२०";
  } else if (formattedDay == "21") {
    return "२१";
  } else if (formattedDay == "22") {
    return "२२";
  } else if (formattedDay == "23") {
    return "२३";
  } else if (formattedDay == "24") {
    return "२४";
  } else if (formattedDay == "25") {
    return "२५";
  } else if (formattedDay == "26") {
    return "२६";
  } else if (formattedDay == "27") {
    return "२७";
  } else if (formattedDay == "28") {
    return "२८";
  } else if (formattedDay == "29") {
    return "२९";
  } else if (formattedDay == "30") {
    return "३०";
  } else if (formattedDay == "31") {
    return "३१";
  }
  return "UNKWN";
}

void constructMonthAndDate() {
  final currentDateFormat = DateTime.now();
  final formattedMonth = formatDate(currentDateFormat, [mm]);
  final formattedDayStr = getDayStr(formatDate(currentDateFormat, [dd]));
  if (formattedMonth == "01") {
    currentMonthIndex = 0;
    currentDate = dateTitlePrefix + formattedDayStr + titleJanuary;
  } else if (formattedMonth == "02") {
    currentMonthIndex = 1;
    currentDate = dateTitlePrefix + formattedDayStr + titleFebruary;
  } else if (formattedMonth == "03") {
    currentMonthIndex = 2;
    currentDate = dateTitlePrefix + formattedDayStr + titleMarch;
  } else if (formattedMonth == "04") {
    currentMonthIndex = 3;
    currentDate = dateTitlePrefix + formattedDayStr + titleApril;
  } else if (formattedMonth == "05") {
    currentMonthIndex = 4;
    currentDate = dateTitlePrefix + formattedDayStr + titleMay;
  } else if (formattedMonth == "06") {
    currentMonthIndex = 5;
    currentDate = dateTitlePrefix + formattedDayStr + titleJune;
  } else if (formattedMonth == "07") {
    currentMonthIndex = 6;
    currentDate = dateTitlePrefix + formattedDayStr + titleJuly;
  } else if (formattedMonth == "08") {
    currentMonthIndex = 7;
    currentDate = dateTitlePrefix + formattedDayStr + titleAugust;
  } else if (formattedMonth == "09") {
    currentMonthIndex = 8;
    currentDate = dateTitlePrefix + formattedDayStr + titleSeptember;
  } else if (formattedMonth == "10") {
    currentMonthIndex = 9;
    currentDate = dateTitlePrefix + formattedDayStr + titleOctober;
  } else if (formattedMonth == "11") {
    currentMonthIndex = 10;
    currentDate = dateTitlePrefix + formattedDayStr + titleNovember;
  } else if (formattedMonth == "12") {
    currentMonthIndex = 11;
    currentDate = dateTitlePrefix + formattedDayStr + titleDecember;
  }
}
