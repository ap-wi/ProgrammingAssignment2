### Codebook of project files UCI HAR Datasets
### ==========================================

### Source

##	Source / URL

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

	Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
	1 - Smartlab - Non-Linear Complex Systems Laboratory
	DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
	2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
	Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
	activityrecognition '@' smartlab.ws 

## 	Information about the data collection (experimental study)

	'features_info.txt': Shows information about the variables used on the feature vector.

	The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
	wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
	we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
	The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
	partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

	The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
	fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
	The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth 
	low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, 
	therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
	variables from the time and frequency domain. See 'features_info.txt' for more details. 	
	
	
### Rawdata

##	Attribute Information:

	For each record in the dataset it is provided:
	- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
	- Triaxial Angular velocity from the gyroscope.
	- A 561-feature vector with time and frequency domain variables.
	- Its activity label.
	- An identifier of the subject who carried out the experiment. 

##      Dataset includes the following files:

	- 'README.txt'
	- 'features_info.txt': Shows information about the variables used on the feature vector.
	- 'features.txt': List of all features.
	- 'activity_labels.txt': Links the class labels with their activity name.
	- 'train/X_train.txt': Training set.
	- 'train/y_train.txt': Training labels.
	- 'test/X_test.txt': Test set.
	- 'test/y_test.txt': Test labels.	
		
## 	Features

	dataset 'activity_labels.txt': Links the class labels with their activity name
	
		activity	 description
		-----------------------------------
		    1            WALKING
		    2            WALKING_UPSTAIRS
		    3            WALKING_DOWNSTAIRS
		    4            SITTING
		    5            STANDING
		    6            LAYING  

	dataset 'train/y_train.txt': Training labels
	dataset 'test/y_test.txt': Test labels
		The experiments have been carried out with a group of 30 volunteers
	
	    
	dataset 'features.txt': List of all features
	dataset 'train/X_train.txt': Training set
	dataset 'test/X_test.txt': Test set 
	
	- All measurements and derived features are numeric data.
	
	- Features are normalized and bounded within [-1,1].
	- Each feature vector is a row on the text file.
	
	- A vector of features was obtained by calculating variables from the time and frequency domain.
	- The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
	
	features					data type
	----------------------------------------------------------
	1 tBodyAcc-mean()-X				: numeric
	2 tBodyAcc-mean()-Y				: numeric
	3 tBodyAcc-mean()-Z				: numeric
	4 tBodyAcc-std()-X				: numeric
	5 tBodyAcc-std()-Y				: numeric
	6 tBodyAcc-std()-Z				: numeric
	7 tBodyAcc-mad()-X				: numeric	
	8 tBodyAcc-mad()-Y				: numeric
	9 tBodyAcc-mad()-Z				: numeric
	10 tBodyAcc-max()-X				: numeric
	11 tBodyAcc-max()-Y				: numeric	
	12 tBodyAcc-max()-Z				: numeric
	13 tBodyAcc-min()-X				: numeric
	14 tBodyAcc-min()-Y				: numeric
	15 tBodyAcc-min()-Z				: numeric
	16 tBodyAcc-sma()				: numeric
	17 tBodyAcc-energy()-X				: numeric
	18 tBodyAcc-energy()-Y				: numeric
	19 tBodyAcc-energy()-Z				: numeric
	20 tBodyAcc-iqr()-X				: numeric
	21 tBodyAcc-iqr()-Y				: numeric
	22 tBodyAcc-iqr()-Z				: numeric
	23 tBodyAcc-entropy()-X				: numeric
	24 tBodyAcc-entropy()-Y				: numeric
	25 tBodyAcc-entropy()-Z				: numeric
	26 tBodyAcc-arCoeff()-X,1			: numeric	
	27 tBodyAcc-arCoeff()-X,2			: numeric	
	28 tBodyAcc-arCoeff()-X,3			: numeric
	29 tBodyAcc-arCoeff()-X,4			: numeric
	30 tBodyAcc-arCoeff()-Y,1			: numeric
	31 tBodyAcc-arCoeff()-Y,2			: numeric
	32 tBodyAcc-arCoeff()-Y,3			: numeric
	33 tBodyAcc-arCoeff()-Y,4			: numeric
	34 tBodyAcc-arCoeff()-Z,1			: numeric
	35 tBodyAcc-arCoeff()-Z,2			: numeric
	36 tBodyAcc-arCoeff()-Z,3			: numeric
	37 tBodyAcc-arCoeff()-Z,4			: numeric
	38 tBodyAcc-correlation()-X,Y			: numeric
	39 tBodyAcc-correlation()-X,Z			: numeric
	40 tBodyAcc-correlation()-Y,Z			: numeric
	41 tGravityAcc-mean()-X				: numeric
	42 tGravityAcc-mean()-Y				: numeric
	43 tGravityAcc-mean()-Z				: numeric
	44 tGravityAcc-std()-X				: numeric
	45 tGravityAcc-std()-Y				: numeric
	46 tGravityAcc-std()-Z				: numeric
	47 tGravityAcc-mad()-X				: numeric
	48 tGravityAcc-mad()-Y				: numeric
	49 tGravityAcc-mad()-Z				: numeric
	50 tGravityAcc-max()-X				: numeric
	51 tGravityAcc-max()-Y				: numeric
	52 tGravityAcc-max()-Z				: numeric
	53 tGravityAcc-min()-X				: numeric
	54 tGravityAcc-min()-Y				: numeric	
	55 tGravityAcc-min()-Z				: numeric	
	56 tGravityAcc-sma()				: numeric
	57 tGravityAcc-energy()-X			: numeric	
	58 tGravityAcc-energy()-Y			: numeric	
	59 tGravityAcc-energy()-Z			: numeric
	60 tGravityAcc-iqr()-X				: numeric
	61 tGravityAcc-iqr()-Y				: numeric
	62 tGravityAcc-iqr()-Z				: numeric
	63 tGravityAcc-entropy()-X			: numeric	
	64 tGravityAcc-entropy()-Y			: numeric
	65 tGravityAcc-entropy()-Z			: numeric
	66 tGravityAcc-arCoeff()-X,1			: numeric
	67 tGravityAcc-arCoeff()-X,2			: numeric
	68 tGravityAcc-arCoeff()-X,3			: numeric
	69 tGravityAcc-arCoeff()-X,4			: numeric
	70 tGravityAcc-arCoeff()-Y,1			: numeric
	71 tGravityAcc-arCoeff()-Y,2			: numeric
	72 tGravityAcc-arCoeff()-Y,3			: numeric
	73 tGravityAcc-arCoeff()-Y,4			: numeric	
	74 tGravityAcc-arCoeff()-Z,1			: numeric
	75 tGravityAcc-arCoeff()-Z,2			: numeric
	76 tGravityAcc-arCoeff()-Z,3			: numeric
	77 tGravityAcc-arCoeff()-Z,4			: numeric
	78 tGravityAcc-correlation()-X,Y		: numeric	
	79 tGravityAcc-correlation()-X,Z		: numeric	
	80 tGravityAcc-correlation()-Y,Z		: numeric	
	81 tBodyAccJerk-mean()-X			: numeric
	82 tBodyAccJerk-mean()-Y			: numeric
	83 tBodyAccJerk-mean()-Z			: numeric
	84 tBodyAccJerk-std()-X				: numeric
	85 tBodyAccJerk-std()-Y				: numeric
	86 tBodyAccJerk-std()-Z				: numeric
	87 tBodyAccJerk-mad()-X				: numeric	
	88 tBodyAccJerk-mad()-Y				: numeric
	89 tBodyAccJerk-mad()-Z				: numeric
	90 tBodyAccJerk-max()-X				: numeric
	91 tBodyAccJerk-max()-Y				: numeric
	92 tBodyAccJerk-max()-Z				: numeric
	93 tBodyAccJerk-min()-X				: numeric
	94 tBodyAccJerk-min()-Y				: numeric
	95 tBodyAccJerk-min()-Z				: numeric
	96 tBodyAccJerk-sma()				: numeric
	97 tBodyAccJerk-energy()-X			: numeric
	98 tBodyAccJerk-energy()-Y			: numeric
	99 tBodyAccJerk-energy()-Z			: numeric
	100 tBodyAccJerk-iqr()-X			: numeric
	101 tBodyAccJerk-iqr()-Y			: numeric
	102 tBodyAccJerk-iqr()-Z			: numeric
	103 tBodyAccJerk-entropy()-X			: numeric
	104 tBodyAccJerk-entropy()-Y			: numeric
	105 tBodyAccJerk-entropy()-Z			: numeric
	106 tBodyAccJerk-arCoeff()-X,1			: numeric
	107 tBodyAccJerk-arCoeff()-X,2			: numeric
	108 tBodyAccJerk-arCoeff()-X,3			: numeric
	109 tBodyAccJerk-arCoeff()-X,4			: numeric
	110 tBodyAccJerk-arCoeff()-Y,1			: numeric
	111 tBodyAccJerk-arCoeff()-Y,2			: numeric
	112 tBodyAccJerk-arCoeff()-Y,3			: numeric
	113 tBodyAccJerk-arCoeff()-Y,4			: numeric
	114 tBodyAccJerk-arCoeff()-Z,1			: numeric	
	115 tBodyAccJerk-arCoeff()-Z,2			: numeric
	116 tBodyAccJerk-arCoeff()-Z,3			: numeric
	117 tBodyAccJerk-arCoeff()-Z,4			: numeric
	118 tBodyAccJerk-correlation()-X,Y		: numeric
	119 tBodyAccJerk-correlation()-X,Z		: numeric
	120 tBodyAccJerk-correlation()-Y,Z		: numeric
	121 tBodyGyro-mean()-X				: numeric
	122 tBodyGyro-mean()-Y				: numeric
	123 tBodyGyro-mean()-Z				: numeric
	124 tBodyGyro-std()-X				: numeric
	125 tBodyGyro-std()-Y				: numeric
	126 tBodyGyro-std()-Z				: numeric
	127 tBodyGyro-mad()-X				: numeric
	128 tBodyGyro-mad()-Y				: numeric
	129 tBodyGyro-mad()-Z				: numeric
	130 tBodyGyro-max()-X				: numeric
	131 tBodyGyro-max()-Y				: numeric
	132 tBodyGyro-max()-Z				: numeric
	133 tBodyGyro-min()-X				: numeric
	134 tBodyGyro-min()-Y				: numeric
	135 tBodyGyro-min()-Z				: numeric
	136 tBodyGyro-sma()				: numeric
	137 tBodyGyro-energy()-X			: numeric	
	138 tBodyGyro-energy()-Y			: numeric
	139 tBodyGyro-energy()-Z			: numeric	
	140 tBodyGyro-iqr()-X				: numeric
	141 tBodyGyro-iqr()-Y				: numeric
	142 tBodyGyro-iqr()-Z				: numeric
	143 tBodyGyro-entropy()-X			: numeric	
	144 tBodyGyro-entropy()-Y			: numeric
	145 tBodyGyro-entropy()-Z			: numeric
	146 tBodyGyro-arCoeff()-X,1			: numeric
	147 tBodyGyro-arCoeff()-X,2			: numeric
	148 tBodyGyro-arCoeff()-X,3			: numeric
	149 tBodyGyro-arCoeff()-X,4			: numeric
	150 tBodyGyro-arCoeff()-Y,1			: numeric
	151 tBodyGyro-arCoeff()-Y,2			: numeric
	152 tBodyGyro-arCoeff()-Y,3			: numeric
	153 tBodyGyro-arCoeff()-Y,4			: numeric
	154 tBodyGyro-arCoeff()-Z,1			: numeric
	155 tBodyGyro-arCoeff()-Z,2			: numeric
	156 tBodyGyro-arCoeff()-Z,3			: numeric
	157 tBodyGyro-arCoeff()-Z,4			: numeric
	158 tBodyGyro-correlation()-X,Y			: numeric
	159 tBodyGyro-correlation()-X,Z			: numeric
	160 tBodyGyro-correlation()-Y,Z			: numeric
	161 tBodyGyroJerk-mean()-X			: numeric
	162 tBodyGyroJerk-mean()-Y			: numeric
	163 tBodyGyroJerk-mean()-Z			: numeric
	164 tBodyGyroJerk-std()-X			: numeric
	165 tBodyGyroJerk-std()-Y			: numeric
	166 tBodyGyroJerk-std()-Z			: numeric
	167 tBodyGyroJerk-mad()-X			: numeric
	168 tBodyGyroJerk-mad()-Y			: numeric
	169 tBodyGyroJerk-mad()-Z			: numeric
	170 tBodyGyroJerk-max()-X			: numeric
	171 tBodyGyroJerk-max()-Y			: numeric
	172 tBodyGyroJerk-max()-Z			: numeric
	173 tBodyGyroJerk-min()-X			: numeric
	174 tBodyGyroJerk-min()-Y			: numeric
	175 tBodyGyroJerk-min()-Z			: numeric
	176 tBodyGyroJerk-sma()				: numeric
	177 tBodyGyroJerk-energy()-X			: numeric
	178 tBodyGyroJerk-energy()-Y			: numeric
	179 tBodyGyroJerk-energy()-Z			: numeric
	180 tBodyGyroJerk-iqr()-X			: numeric
	181 tBodyGyroJerk-iqr()-Y			: numeric
	182 tBodyGyroJerk-iqr()-Z			: numeric
	183 tBodyGyroJerk-entropy()-X			: numeric
	184 tBodyGyroJerk-entropy()-Y			: numeric
	185 tBodyGyroJerk-entropy()-Z			: numeric
	186 tBodyGyroJerk-arCoeff()-X,1			: numeric
	187 tBodyGyroJerk-arCoeff()-X,2			: numeric
	188 tBodyGyroJerk-arCoeff()-X,3			: numeric
	189 tBodyGyroJerk-arCoeff()-X,4			: numeric
	190 tBodyGyroJerk-arCoeff()-Y,1			: numeric
	191 tBodyGyroJerk-arCoeff()-Y,2			: numeric
	192 tBodyGyroJerk-arCoeff()-Y,3			: numeric
	193 tBodyGyroJerk-arCoeff()-Y,4			: numeric
	194 tBodyGyroJerk-arCoeff()-Z,1			: numeric
	195 tBodyGyroJerk-arCoeff()-Z,2			: numeric
	196 tBodyGyroJerk-arCoeff()-Z,3			: numeric
	197 tBodyGyroJerk-arCoeff()-Z,4			: numeric
	198 tBodyGyroJerk-correlation()-X,Y		: numeric	
	199 tBodyGyroJerk-correlation()-X,Z		: numeric
	200 tBodyGyroJerk-correlation()-Y,Z		: numeric
	201 tBodyAccMag-mean()				: numeric
	202 tBodyAccMag-std()				: numeric
	203 tBodyAccMag-mad()				: numeric
	204 tBodyAccMag-max()				: numeric
	205 tBodyAccMag-min()				: numeric
	206 tBodyAccMag-sma()				: numeric
	207 tBodyAccMag-energy()			: numeric	
	208 tBodyAccMag-iqr()				: numeric
	209 tBodyAccMag-entropy()			: numeric	
	210 tBodyAccMag-arCoeff()1			: numeric
	211 tBodyAccMag-arCoeff()2			: numeric
	212 tBodyAccMag-arCoeff()3			: numeric
	213 tBodyAccMag-arCoeff()4			: numeric
	214 tGravityAccMag-mean()			: numeric
	215 tGravityAccMag-std()			: numeric
	216 tGravityAccMag-mad()			: numeric
	217 tGravityAccMag-max()			: numeric
	218 tGravityAccMag-min()			: numeric
	219 tGravityAccMag-sma()			: numeric
	220 tGravityAccMag-energy()			: numeric
	221 tGravityAccMag-iqr()			: numeric
	222 tGravityAccMag-entropy()			: numeric
	223 tGravityAccMag-arCoeff()1			: numeric
	224 tGravityAccMag-arCoeff()2			: numeric
	225 tGravityAccMag-arCoeff()3			: numeric
	226 tGravityAccMag-arCoeff()4			: numeric
	227 tBodyAccJerkMag-mean()			: numeric
	228 tBodyAccJerkMag-std()			: numeric
	229 tBodyAccJerkMag-mad()			: numeric
	230 tBodyAccJerkMag-max()			: numeric
	231 tBodyAccJerkMag-min()			: numeric
	232 tBodyAccJerkMag-sma()			: numeric
	233 tBodyAccJerkMag-energy()			: numeric
	234 tBodyAccJerkMag-iqr()			: numeric
	235 tBodyAccJerkMag-entropy()			: numeric
	236 tBodyAccJerkMag-arCoeff()1			: numeric
	237 tBodyAccJerkMag-arCoeff()2			: numeric
	238 tBodyAccJerkMag-arCoeff()3			: numeric
	239 tBodyAccJerkMag-arCoeff()4			: numeric
	240 tBodyGyroMag-mean()				: numeric
	241 tBodyGyroMag-std()				: numeric
	242 tBodyGyroMag-mad()				: numeric
	243 tBodyGyroMag-max()				: numeric
	244 tBodyGyroMag-min()				: numeric
	245 tBodyGyroMag-sma()				: numeric
	246 tBodyGyroMag-energy()			: numeric	
	247 tBodyGyroMag-iqr()				: numeric
	248 tBodyGyroMag-entropy()			: numeric
	249 tBodyGyroMag-arCoeff()1			: numeric
	250 tBodyGyroMag-arCoeff()2			: numeric
	251 tBodyGyroMag-arCoeff()3			: numeric	
	252 tBodyGyroMag-arCoeff()4			: numeric
	253 tBodyGyroJerkMag-mean()			: numeric
	254 tBodyGyroJerkMag-std()			: numeric
	255 tBodyGyroJerkMag-mad()			: numeric
	256 tBodyGyroJerkMag-max()			: numeric
	257 tBodyGyroJerkMag-min()			: numeric
	258 tBodyGyroJerkMag-sma()			: numeric
	259 tBodyGyroJerkMag-energy()			: numeric
	260 tBodyGyroJerkMag-iqr()			: numeric
	261 tBodyGyroJerkMag-entropy()			: numeric
	262 tBodyGyroJerkMag-arCoeff()1			: numeric
	263 tBodyGyroJerkMag-arCoeff()2			: numeric
	264 tBodyGyroJerkMag-arCoeff()3			: numeric
	265 tBodyGyroJerkMag-arCoeff()4			: numeric
	266 fBodyAcc-mean()-X				: numeric
	267 fBodyAcc-mean()-Y				: numeric
	268 fBodyAcc-mean()-Z				: numeric
	269 fBodyAcc-std()-X				: numeric
	270 fBodyAcc-std()-Y				: numeric
	271 fBodyAcc-std()-Z				: numeric
	272 fBodyAcc-mad()-X				: numeric
	273 fBodyAcc-mad()-Y				: numeric
	274 fBodyAcc-mad()-Z				: numeric
	275 fBodyAcc-max()-X				: numeric
	276 fBodyAcc-max()-Y				: numeric
	277 fBodyAcc-max()-Z				: numeric	
	278 fBodyAcc-min()-X				: numeric
	279 fBodyAcc-min()-Y				: numeric
	280 fBodyAcc-min()-Z				: numeric
	281 fBodyAcc-sma()				: numeric
	282 fBodyAcc-energy()-X				: numeric
	283 fBodyAcc-energy()-Y				: numeric
	284 fBodyAcc-energy()-Z				: numeric
	285 fBodyAcc-iqr()-X				: numeric
	286 fBodyAcc-iqr()-Y				: numeric
	287 fBodyAcc-iqr()-Z				: numeric
	288 fBodyAcc-entropy()-X			: numeric	
	289 fBodyAcc-entropy()-Y			: numeric	
	290 fBodyAcc-entropy()-Z			: numeric
	291 fBodyAcc-maxInds-X				: numeric
	292 fBodyAcc-maxInds-Y				: numeric
	293 fBodyAcc-maxInds-Z				: numeric
	294 fBodyAcc-meanFreq()-X			: numeric
	295 fBodyAcc-meanFreq()-Y			: numeric
	296 fBodyAcc-meanFreq()-Z			: numeric
	297 fBodyAcc-skewness()-X			: numeric
	298 fBodyAcc-kurtosis()-X			: numeric
	299 fBodyAcc-skewness()-Y			: numeric
	300 fBodyAcc-kurtosis()-Y			: numeric
	301 fBodyAcc-skewness()-Z			: numeric
	302 fBodyAcc-kurtosis()-Z			: numeric
	303 fBodyAcc-bandsEnergy()-1,8			: numeric
	304 fBodyAcc-bandsEnergy()-9,16			: numeric
	305 fBodyAcc-bandsEnergy()-17,24		: numeric	
	306 fBodyAcc-bandsEnergy()-25,32		: numeric
	307 fBodyAcc-bandsEnergy()-33,40		: numeric	
	308 fBodyAcc-bandsEnergy()-41,48		: numeric	
	309 fBodyAcc-bandsEnergy()-49,56		: numeric	
	310 fBodyAcc-bandsEnergy()-57,64		: numeric
	311 fBodyAcc-bandsEnergy()-1,16			: numeric
	312 fBodyAcc-bandsEnergy()-17,32		: numeric
	313 fBodyAcc-bandsEnergy()-33,48		: numeric	
	314 fBodyAcc-bandsEnergy()-49,64		: numeric	
	315 fBodyAcc-bandsEnergy()-1,24			: numeric
	316 fBodyAcc-bandsEnergy()-25,48		: numeric	
	317 fBodyAcc-bandsEnergy()-1,8			: numeric
	318 fBodyAcc-bandsEnergy()-9,16			: numeric
	319 fBodyAcc-bandsEnergy()-17,24		: numeric	
	320 fBodyAcc-bandsEnergy()-25,32		: numeric	
	321 fBodyAcc-bandsEnergy()-33,40		: numeric	
	322 fBodyAcc-bandsEnergy()-41,48		: numeric
	323 fBodyAcc-bandsEnergy()-49,56		: numeric
	324 fBodyAcc-bandsEnergy()-57,64		: numeric
	325 fBodyAcc-bandsEnergy()-1,16			: numeric
	326 fBodyAcc-bandsEnergy()-17,32		: numeric
	327 fBodyAcc-bandsEnergy()-33,48		: numeric
	328 fBodyAcc-bandsEnergy()-49,64		: numeric	
	329 fBodyAcc-bandsEnergy()-1,24			: numeric
	330 fBodyAcc-bandsEnergy()-25,48		: numeric	
	331 fBodyAcc-bandsEnergy()-1,8			: numeric
	332 fBodyAcc-bandsEnergy()-9,16			: numeric
	333 fBodyAcc-bandsEnergy()-17,24		: numeric	
	334 fBodyAcc-bandsEnergy()-25,32		: numeric	
	335 fBodyAcc-bandsEnergy()-33,40		: numeric	
	336 fBodyAcc-bandsEnergy()-41,48		: numeric
	337 fBodyAcc-bandsEnergy()-49,56		: numeric
	338 fBodyAcc-bandsEnergy()-57,64		: numeric
	339 fBodyAcc-bandsEnergy()-1,16			: numeric
	340 fBodyAcc-bandsEnergy()-17,32		: numeric	
	341 fBodyAcc-bandsEnergy()-33,48		: numeric	
	342 fBodyAcc-bandsEnergy()-49,64		: numeric
	343 fBodyAcc-bandsEnergy()-1,24			: numeric
	344 fBodyAcc-bandsEnergy()-25,48		: numeric	
	345 fBodyAccJerk-mean()-X			: numeric
	346 fBodyAccJerk-mean()-Y			: numeric
	347 fBodyAccJerk-mean()-Z			: numeric
	348 fBodyAccJerk-std()-X			: numeric
	349 fBodyAccJerk-std()-Y			: numeric
	350 fBodyAccJerk-std()-Z			: numeric
	351 fBodyAccJerk-mad()-X			: numeric
	352 fBodyAccJerk-mad()-Y			: numeric
	353 fBodyAccJerk-mad()-Z			: numeric
	354 fBodyAccJerk-max()-X			: numeric
	355 fBodyAccJerk-max()-Y			: numeric
	356 fBodyAccJerk-max()-Z			: numeric
	357 fBodyAccJerk-min()-X			: numeric
	358 fBodyAccJerk-min()-Y			: numeric
	359 fBodyAccJerk-min()-Z			: numeric
	360 fBodyAccJerk-sma()				: numeric
	361 fBodyAccJerk-energy()-X			: numeric
	362 fBodyAccJerk-energy()-Y			: numeric
	363 fBodyAccJerk-energy()-Z			: numeric
	364 fBodyAccJerk-iqr()-X			: numeric
	365 fBodyAccJerk-iqr()-Y			: numeric
	366 fBodyAccJerk-iqr()-Z			: numeric
	367 fBodyAccJerk-entropy()-X			: numeric
	368 fBodyAccJerk-entropy()-Y			: numeric
	369 fBodyAccJerk-entropy()-Z			: numeric
	370 fBodyAccJerk-maxInds-X			: numeric
	371 fBodyAccJerk-maxInds-Y			: numeric
	372 fBodyAccJerk-maxInds-Z			: numeric
	373 fBodyAccJerk-meanFreq()-X			: numeric
	374 fBodyAccJerk-meanFreq()-Y			: numeric
	375 fBodyAccJerk-meanFreq()-Z			: numeric
	376 fBodyAccJerk-skewness()-X			: numeric
	377 fBodyAccJerk-kurtosis()-X			: numeric
	378 fBodyAccJerk-skewness()-Y			: numeric
	379 fBodyAccJerk-kurtosis()-Y			: numeric
	380 fBodyAccJerk-skewness()-Z			: numeric
	381 fBodyAccJerk-kurtosis()-Z			: numeric
	382 fBodyAccJerk-bandsEnergy()-1,8		: numeric
	383 fBodyAccJerk-bandsEnergy()-9,16		: numeric
	384 fBodyAccJerk-bandsEnergy()-17,24		: numeric
	385 fBodyAccJerk-bandsEnergy()-25,32		: numeric
	386 fBodyAccJerk-bandsEnergy()-33,40		: numeric
	387 fBodyAccJerk-bandsEnergy()-41,48		: numeric
	388 fBodyAccJerk-bandsEnergy()-49,56		: numeric
	389 fBodyAccJerk-bandsEnergy()-57,64		: numeric	
	390 fBodyAccJerk-bandsEnergy()-1,16		: numeric
	391 fBodyAccJerk-bandsEnergy()-17,32		: numeric
	392 fBodyAccJerk-bandsEnergy()-33,48		: numeric
	393 fBodyAccJerk-bandsEnergy()-49,64		: numeric
	394 fBodyAccJerk-bandsEnergy()-1,24		: numeric
	395 fBodyAccJerk-bandsEnergy()-25,48		: numeric
	396 fBodyAccJerk-bandsEnergy()-1,8		: numeric
	397 fBodyAccJerk-bandsEnergy()-9,16		: numeric
	398 fBodyAccJerk-bandsEnergy()-17,24		: numeric
	399 fBodyAccJerk-bandsEnergy()-25,32		: numeric
	400 fBodyAccJerk-bandsEnergy()-33,40		: numeric
	401 fBodyAccJerk-bandsEnergy()-41,48		: numeric
	402 fBodyAccJerk-bandsEnergy()-49,56		: numeric
	403 fBodyAccJerk-bandsEnergy()-57,64		: numeric
	404 fBodyAccJerk-bandsEnergy()-1,16		: numeric
	405 fBodyAccJerk-bandsEnergy()-17,32		: numeric
	406 fBodyAccJerk-bandsEnergy()-33,48		: numeric
	407 fBodyAccJerk-bandsEnergy()-49,64		: numeric
	408 fBodyAccJerk-bandsEnergy()-1,24		: numeric
	409 fBodyAccJerk-bandsEnergy()-25,48		: numeric
	410 fBodyAccJerk-bandsEnergy()-1,8		: numeric
	411 fBodyAccJerk-bandsEnergy()-9,16		: numeric
	412 fBodyAccJerk-bandsEnergy()-17,24		: numeric
	413 fBodyAccJerk-bandsEnergy()-25,32		: numeric
	414 fBodyAccJerk-bandsEnergy()-33,40		: numeric
	415 fBodyAccJerk-bandsEnergy()-41,48		: numeric
	416 fBodyAccJerk-bandsEnergy()-49,56		: numeric
	417 fBodyAccJerk-bandsEnergy()-57,64		: numeric
	418 fBodyAccJerk-bandsEnergy()-1,16		: numeric
	419 fBodyAccJerk-bandsEnergy()-17,32		: numeric
	420 fBodyAccJerk-bandsEnergy()-33,48		: numeric
	421 fBodyAccJerk-bandsEnergy()-49,64		: numeric
	422 fBodyAccJerk-bandsEnergy()-1,24		: numeric
	423 fBodyAccJerk-bandsEnergy()-25,48		: numeric
	424 fBodyGyro-mean()-X				: numeric
	425 fBodyGyro-mean()-Y				: numeric
	426 fBodyGyro-mean()-Z				: numeric
	427 fBodyGyro-std()-X				: numeric
	428 fBodyGyro-std()-Y				: numeric
	429 fBodyGyro-std()-Z				: numeric
	430 fBodyGyro-mad()-X				: numeric	
	431 fBodyGyro-mad()-Y				: numeric
	432 fBodyGyro-mad()-Z				: numeric
	433 fBodyGyro-max()-X				: numeric
	434 fBodyGyro-max()-Y				: numeric
	435 fBodyGyro-max()-Z				: numeric
	436 fBodyGyro-min()-X				: numeric
	437 fBodyGyro-min()-Y				: numeric	
	438 fBodyGyro-min()-Z				: numeric	
	439 fBodyGyro-sma()				: numeric
	440 fBodyGyro-energy()-X			: numeric
	441 fBodyGyro-energy()-Y			: numeric
	442 fBodyGyro-energy()-Z			: numeric
	443 fBodyGyro-iqr()-X				: numeric
	444 fBodyGyro-iqr()-Y				: numeric
	445 fBodyGyro-iqr()-Z				: numeric
	446 fBodyGyro-entropy()-X			: numeric	
	447 fBodyGyro-entropy()-Y			: numeric
	448 fBodyGyro-entropy()-Z			: numeric
	449 fBodyGyro-maxInds-X				: numeric
	450 fBodyGyro-maxInds-Y				: numeric
	451 fBodyGyro-maxInds-Z				: numeric
	452 fBodyGyro-meanFreq()-X			: numeric
	453 fBodyGyro-meanFreq()-Y			: numeric
	454 fBodyGyro-meanFreq()-Z			: numeric
	455 fBodyGyro-skewness()-X			: numeric
	456 fBodyGyro-kurtosis()-X			: numeric
	457 fBodyGyro-skewness()-Y			: numeric
	458 fBodyGyro-kurtosis()-Y			: numeric
	459 fBodyGyro-skewness()-Z			: numeric
	460 fBodyGyro-kurtosis()-Z			: numeric
	461 fBodyGyro-bandsEnergy()-1,8			: numeric
	462 fBodyGyro-bandsEnergy()-9,16		: numeric	
	463 fBodyGyro-bandsEnergy()-17,24		: numeric
	464 fBodyGyro-bandsEnergy()-25,32		: numeric
	465 fBodyGyro-bandsEnergy()-33,40		: numeric
	466 fBodyGyro-bandsEnergy()-41,48		: numeric
	467 fBodyGyro-bandsEnergy()-49,56		: numeric
	468 fBodyGyro-bandsEnergy()-57,64		: numeric
	469 fBodyGyro-bandsEnergy()-1,16		: numeric
	470 fBodyGyro-bandsEnergy()-17,32		: numeric	
	471 fBodyGyro-bandsEnergy()-33,48		: numeric
	472 fBodyGyro-bandsEnergy()-49,64		: numeric
	473 fBodyGyro-bandsEnergy()-1,24		: numeric
	474 fBodyGyro-bandsEnergy()-25,48		: numeric
	475 fBodyGyro-bandsEnergy()-1,8			: numeric
	476 fBodyGyro-bandsEnergy()-9,16		: numeric
	477 fBodyGyro-bandsEnergy()-17,24		: numeric
	478 fBodyGyro-bandsEnergy()-25,32		: numeric
	479 fBodyGyro-bandsEnergy()-33,40		: numeric
	480 fBodyGyro-bandsEnergy()-41,48		: numeric
	481 fBodyGyro-bandsEnergy()-49,56		: numeric
	482 fBodyGyro-bandsEnergy()-57,64		: numeric
	483 fBodyGyro-bandsEnergy()-1,16		: numeric
	484 fBodyGyro-bandsEnergy()-17,32		: numeric	
	485 fBodyGyro-bandsEnergy()-33,48		: numeric
	486 fBodyGyro-bandsEnergy()-49,64		: numeric
	487 fBodyGyro-bandsEnergy()-1,24		: numeric
	488 fBodyGyro-bandsEnergy()-25,48		: numeric
	489 fBodyGyro-bandsEnergy()-1,8			: numeric
	490 fBodyGyro-bandsEnergy()-9,16		: numeric
	491 fBodyGyro-bandsEnergy()-17,24		: numeric
	492 fBodyGyro-bandsEnergy()-25,32		: numeric
	493 fBodyGyro-bandsEnergy()-33,40		: numeric
	494 fBodyGyro-bandsEnergy()-41,48		: numeric
	495 fBodyGyro-bandsEnergy()-49,56		: numeric
	496 fBodyGyro-bandsEnergy()-57,64		: numeric
	497 fBodyGyro-bandsEnergy()-1,16		: numeric
	498 fBodyGyro-bandsEnergy()-17,32		: numeric
	499 fBodyGyro-bandsEnergy()-33,48		: numeric
	500 fBodyGyro-bandsEnergy()-49,64		: numeric
	501 fBodyGyro-bandsEnergy()-1,24		: numeric
	502 fBodyGyro-bandsEnergy()-25,48		: numeric
	503 fBodyAccMag-mean()				: numeric
	504 fBodyAccMag-std()				: numeric
	505 fBodyAccMag-mad()				: numeric
	506 fBodyAccMag-max()				: numeric
	507 fBodyAccMag-min()				: numeric
	508 fBodyAccMag-sma()				: numeric
	509 fBodyAccMag-energy()			: numeric
	510 fBodyAccMag-iqr()				: numeric
	511 fBodyAccMag-entropy()			: numeric
	512 fBodyAccMag-maxInds				: numeric
	513 fBodyAccMag-meanFreq()			: numeric
	514 fBodyAccMag-skewness()			: numeric
	515 fBodyAccMag-kurtosis()			: numeric
	516 fBodyBodyAccJerkMag-mean()			: numeric
	517 fBodyBodyAccJerkMag-std()			: numeric
	518 fBodyBodyAccJerkMag-mad()			: numeric
	519 fBodyBodyAccJerkMag-max()			: numeric
	520 fBodyBodyAccJerkMag-min()			: numeric
	521 fBodyBodyAccJerkMag-sma()			: numeric
	522 fBodyBodyAccJerkMag-energy()		: numeric	
	523 fBodyBodyAccJerkMag-iqr()			: numeric
	524 fBodyBodyAccJerkMag-entropy()		: numeric	
	525 fBodyBodyAccJerkMag-maxInds			: numeric
	526 fBodyBodyAccJerkMag-meanFreq()		: numeric
	527 fBodyBodyAccJerkMag-skewness()		: numeric
	528 fBodyBodyAccJerkMag-kurtosis()		: numeric
	529 fBodyBodyGyroMag-mean()			: numeric
	530 fBodyBodyGyroMag-std()			: numeric
	531 fBodyBodyGyroMag-mad()			: numeric
	532 fBodyBodyGyroMag-max()			: numeric
	533 fBodyBodyGyroMag-min()			: numeric
	534 fBodyBodyGyroMag-sma()			: numeric
	535 fBodyBodyGyroMag-energy()			: numeric
	536 fBodyBodyGyroMag-iqr()			: numeric
	537 fBodyBodyGyroMag-entropy()			: numeric
	538 fBodyBodyGyroMag-maxInds			: numeric
	539 fBodyBodyGyroMag-meanFreq()			: numeric
	540 fBodyBodyGyroMag-skewness()			: numeric
	541 fBodyBodyGyroMag-kurtosis()			: numeric
	542 fBodyBodyGyroJerkMag-mean()			: numeric
	543 fBodyBodyGyroJerkMag-std()			: numeric
	544 fBodyBodyGyroJerkMag-mad()			: numeric
	545 fBodyBodyGyroJerkMag-max()			: numeric
	546 fBodyBodyGyroJerkMag-min()			: numeric
	547 fBodyBodyGyroJerkMag-sma()			: numeric
	548 fBodyBodyGyroJerkMag-energy()		: numeric	
	549 fBodyBodyGyroJerkMag-iqr()			: numeric
	550 fBodyBodyGyroJerkMag-entropy()		: numeric	
	551 fBodyBodyGyroJerkMag-maxInds		: numeric	
	552 fBodyBodyGyroJerkMag-meanFreq()		: numeric
	553 fBodyBodyGyroJerkMag-skewness()		: numeric
	554 fBodyBodyGyroJerkMag-kurtosis()		: numeric
	555 angle(tBodyAccMean,gravity)			: numeric
	556 angle(tBodyAccJerkMean),gravityMean) 	: numeric
	557 angle(tBodyGyroMean,gravityMean)		: numeric
	558 angle(tBodyGyroJerkMean,gravityMean)	: numeric
	559 angle(X,gravityMean)			: numeric
	560 angle(Y,gravityMean)			: numeric
	561 angle(Z,gravityMean)			: numeric


### Transformations

   The reading of the data sets, the transformation of the data, prepearing of the tidy data 
   frame and writing in the csv-file "average_measurements_as_mean_deviation.txt" is implemented 
   by the R-script "run_analysis()".

## R-script "run_analysis ( arg_dir )"	

   - merges the training and the test sets to create one data set
   - extracts only the measurements on the mean and standard deviation for each measurement
   - Uses descriptive activity names to name the activities in the data set
   - write csv-file "measurements_on_mean_deviation.csv" data frame with the measurements 
     on the mean and standard deviation for each measurement
   - appropriately labels the data set with descriptive variable names
   - from the data set in step 4, creates a second, independent tidy data set 
     with the average of each variable for each activity and each subject
   - sort tidy data set by activity and volunteers (subject)
   - write csv-file "average_measurements_on_mean_std.txt" with tidy data set

   The R-script "run_analysis()" use the folling R-scripts. 
   
## Merges the training and the test sets to create one data set

	R-script "merge_test_and_train_data( dir )"	

	
## Extracts only the measurements on the mean and standard deviation for each measurement

	R-script "select_columns_mean_std( my_data )"	
	
	
## Uses descriptive activity names to name the activities in the data set	
	
	R-script "merge_activity_and_dfdata( dir , dfdata )"	
	

## Appropriately labels the data set with descriptive variable names

## From the data set in step 4, creates a second, independent tidy data set with 
   the average of each variable for each activity and each subject. 
	
     	R-script "create_tidy_df_of_average( dir , dfdata )"



### Tidy data

## 	dataset
	data frame:     my_mean_std_tidy
	data file: 	average_measurements_on_mean_std.txt

##	features of dataset

	All derived features from measurements are numeric data.
	
	A vector of features was obtained by calculating variables from the time and frequency domain.
	The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

	Tidy data set with the average of each variable for each activity and each subject (volunteers).

	features				  data type	levels (characteristics)	
	-----------------------------------------------------------------------------------------------------------
	activity_id                        	: categorical : 6 levels "1","2","3","4","5","6"
	activity_desc                      	: categorical : 6 levels "WALKING","WALKING_UPSTAIRS",
								  "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"
	volunteers                         	: categorical : 30 levels "1","2","3","4","5",...,"30"
	mean-of-tBodyAcc-mean()-X              	: numeric
	mean-of-tBodyAcc-mean()-Y              	: numeric
	mean-of-tBodyAcc-mean()-Z              	: numeric
	mean-of-tBodyAcc-std()-X               	: numeric
	mean-of-tBodyAcc-std()-Y               	: numeric
	mean-of-tBodyAcc-std()-Z               	: numeric
	mean-of-tGravityAcc-mean()-X           	: numeric
	mean-of-tGravityAcc-mean()-Y           	: numeric
	mean-of-tGravityAcc-mean()-Z           	: numeric
	mean-of-tGravityAcc-std()-X            	: numeric
	mean-of-tGravityAcc-std()-Y            	: numeric
	mean-of-tGravityAcc-std()-Z            	: numeric
	mean-of-tBodyAccJerk-mean()-X          	: numeric
	mean-of-tBodyAccJerk-mean()-Y          	: numeric
	mean-of-tBodyAccJerk-mean()-Z          	: numeric
	mean-of-tBodyAccJerk-std()-X           	: numeric
	mean-of-tBodyAccJerk-std()-Y           	: numeric
	mean-of-tBodyAccJerk-std()-Z           	: numeric
	mean-of-tBodyGyro-mean()-X             	: numeric
	mean-of-tBodyGyro-mean()-Y             	: numeric
	mean-of-tBodyGyro-mean()-Z             	: numeric
	mean-of-tBodyGyro-std()-X              	: numeric
	mean-of-tBodyGyro-std()-Y              	: numeric
	mean-of-tBodyGyro-std()-Z              	: numeric
	mean-of-tBodyGyroJerk-mean()-X         	: numeric
	mean-of-tBodyGyroJerk-mean()-Y         	: numeric
	mean-of-tBodyGyroJerk-mean()-Z         	: numeric
	mean-of-tBodyGyroJerk-std()-X          	: numeric
	mean-of-tBodyGyroJerk-std()-Y          	: numeric
	mean-of-tBodyGyroJerk-std()-Z          	: numeric
	mean-of-tBodyAccMag-mean()             	: numeric
	mean-of-tBodyAccMag-std()              	: numeric
	mean-of-tGravityAccMag-mean()          	: numeric
	mean-of-tGravityAccMag-std()           	: numeric
	mean-of-tBodyAccJerkMag-mean()         	: numeric
	mean-of-tBodyAccJerkMag-std()          	: numeric
	mean-of-tBodyGyroMag-mean()            	: numeric
	mean-of-tBodyGyroMag-std()             	: numeric
	mean-of-tBodyGyroJerkMag-mean()        	: numeric
	mean-of-tBodyGyroJerkMag-std()         	: numeric
	mean-of-fBodyAcc-mean()-X              	: numeric
	mean-of-fBodyAcc-mean()-Y              	: numeric
	mean-of-fBodyAcc-mean()-Z              	: numeric
	mean-of-fBodyAcc-std()-X               	: numeric
	mean-of-fBodyAcc-std()-Y               	: numeric
	mean-of-fBodyAcc-std()-Z               	: numeric
	mean-of-fBodyAcc-meanFreq()-X          	: numeric
	mean-of-fBodyAcc-meanFreq()-Y          	: numeric
	mean-of-fBodyAcc-meanFreq()-Z          	: numeric
	mean-of-fBodyAccJerk-mean()-X          	: numeric
	mean-of-fBodyAccJerk-mean()-Y          	: numeric
	mean-of-fBodyAccJerk-mean()-Z          	: numeric
	mean-of-fBodyAccJerk-std()-X           	: numeric
	mean-of-fBodyAccJerk-std()-Y           	: numeric
	mean-of-fBodyAccJerk-std()-Z           	: numeric
	mean-of-fBodyAccJerk-meanFreq()-X      	: numeric
	mean-of-fBodyAccJerk-meanFreq()-Y      	: numeric
	mean-of-fBodyAccJerk-meanFreq()-Z      	: numeric
	mean-of-fBodyGyro-mean()-X             	: numeric
	mean-of-fBodyGyro-mean()-Y             	: numeric
	mean-of-fBodyGyro-mean()-Z             	: numeric
	mean-of-fBodyGyro-std()-X              	: numeric
	mean-of-fBodyGyro-std()-Y              	: numeric
	mean-of-fBodyGyro-std()-Z              	: numeric
	mean-of-fBodyGyro-meanFreq()-X         	: numeric
	mean-of-fBodyGyro-meanFreq()-Y         	: numeric
	mean-of-fBodyGyro-meanFreq()-Z         	: numeric
	mean-of-fBodyAccMag-mean()             	: numeric
	mean-of-fBodyAccMag-std()              	: numeric
	mean-of-fBodyAccMag-meanFreq()         	: numeric
	mean-of-fBodyBodyAccJerkMag-mean()     	: numeric
	mean-of-fBodyBodyAccJerkMag-std()      	: numeric
	mean-of-fBodyBodyAccJerkMag-meanFreq() 	: numeric
	mean-of-fBodyBodyGyroMag-mean()        	: numeric
	mean-of-fBodyBodyGyroMag-std()         	: numeric
	mean-of-fBodyBodyGyroMag-meanFreq()    	: numeric
	mean-of-fBodyBodyGyroJerkMag-mean()    	: numeric
	mean-of-fBodyBodyGyroJerkMag-std()     	: numeric
	mean-of-fBodyBodyGyroJerkMag-meanFreq()	: numeric


