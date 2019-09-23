# napire2018/data

Data Analysis for the 2018 Edition of the NaPiRE Survey.
Contains all the raw data as exported from the survey tool.

## Folders

The files in the directories follow the following scheme:

`(1) variable number`, `(2) length of answers and / or coding scheme expected`, and `(3) number of not-evidently-null answers`.

E.g.: `(1) v_105 (2) short (3) 11` results in `v_105_short_11.csv`.

You can find more information on the variables specified in the associated [codebook](https://github.com/NaPiRE/napire2018/blob/master/documentation/napire2018codebook.pdf).

The folders contain the following files:

- **exports and preparation**: Raw data exports and preparation of data for further analysis.
- **freetext**: Raw free text answers.
- **freetext_code-validation**: Freetext answers that are already coded and have to to be validated.
- **freetext_coded**: Freetext answers that are coded and validated.
- **freetext_tocode**: Freetext answers that have (had) to be coded.
- **preliminary analysis**: Contains preliminary (shallow) analyses directly after the export and discarted afterwards.

## Files

- **napire_truth.csv**: The file napire_truth.csv contains the complete and cleaned record.
