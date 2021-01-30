# HansWehrDictionary

Dictionary of Modern Written Arabic by Hans Wehr

Play Store Link - https://play.google.com/store/apps/details?id=com.muslimtechnet.hanswehr

## Future Work
- Merge Browse Screen and Search Screen
- Enable search in English

## Release Notes

#### V - 1.4.7+17 (28 Jan, 2020)
- Fixed incorrect app label.

#### V - 1.4.6+16 (28 Jan, 2020)
- Switched to mediation.

#### V - 1.4.5+15 (25 Jan, 2020) Not released
- Changed admob banner ad

#### V - 1.4.4+14 (24 Jan, 2020) Alpha release - reverted
- FAN

#### V - 1.4.3+13 (21 Jan, 2020)
Bug Fix - Clicking on search history gives no result. (Thanks Mohammed Irfan).
Bug Fix in Notification screen. 

#### V - 1.4.2+12 (21 Jan, 2020)
Bug Fix - Browse Screen now also highlights roman numbers denoting verb forms

#### V - 1.4.1+11 (20 Jan, 2020)
- Bug Fixes and Improvements in Notification and About App screen.

#### V - 1.4.0+10 (18 Jan, 2020)
- Highlighted roman numerals depicting verb forms (Thanks Mohammed Irfan)
- Future database updates will now be pushed directly without the need to update the app.
- Introduced notification screen which will notify about the updated database

#### V - 1.3.0+9 (13 Jan, 2020)
- History of 5 recent searches (Thanks Mohammed Irfan)
- Corrected typo in definition of دخل (Thanks Yusuf)
- Corrected the root of كشف 
- Share App option
- Set up DB to recieve updates without updating entire app (Code changes remaining)
- Experimented with MoPub ads (Incomplete)

#### V - 1.2.0+8 (25 Dec, 2020)
- Abbreviations

#### V - 1.1.0+7 (24 Dec, 2020)
- Browse Screen
- Rate Us

#### V - 1.0.3+6 (21 Dec, 2020)
- Highlight Color Customization

#### V - 1.0.2+5 (20 Dec, 2020)
- Dark Theme
- Removed option to disbale ads

#### V - 1.0.1+4 (14 Dec, 2020)
- Changed switch to material switch
- Updated AboutApp section
- Fixed hidden definitions under ad

#### V - 1.0.1+3 (13 Dec, 2020)
- Option to Remove ads (Free, No feature loss)

#### V - 1.0.0+2 (11 Dec, 2020)
- Added advertisements

#### V - 1.0.0 (6 Dec, 2020)
- Basic app

## Disclaimer
The original source was a PDF file, which was converted to an XML and parsed which isn't a foolproof method. A lot of manual correction was needed and might still have a few errors. Do let me know if you find any - gibreel.khan@gmail.com

## Documentation

### Data Model
FIELD | Comment
--- | ---
ID | The primary key
WORD | Arabic word
DEFINITION |  The definition of the corresponding WORD
IS_ROOT | Whether the WORD is an Arabic root word
PARENT_ID | If it is NOT a root word, references the ID of the root word else references to itself

## Courtesy
- https://github.com/muhammad-abdurrahman/hans-wehr-fodt-parser/ for the source xml.

