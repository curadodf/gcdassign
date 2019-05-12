In this codebook, a description of the variables, the data, and any transformations or work performed to clean up the data.

Data file: tidyset.txt
> The first row contains variable names, that will be described in the VARIABLES section

Transformations and work performed to achieve final clean data: 
> The zipped file was downloaded from the course project website and unzipped;
> All files were manually imported and read using Import Dataset >> From text (base);
> All sets were initially divided into train (x, y and subject), test (x, y and subject), features and activity labels. They were all imported separetely and then merged, following the script (run_analysis.R);
> Even though several measures were provided, only means and standard deviations were maintained;
> Variable and activity names were assigned
> A second, independent tidy data set with the average of each variable for each activity and each subject was created and exported (tidyset.txt).

VARIABLES:

 [1] "subjectid": subject identifier, an interger ranging from 1 to 30                                                     
 [2] "activityid": activity identifier, with 6 possible values
          1 walking
          2 walking upstairs
          3 walking downstairs
          4 sitting
          5 standing
          6 laying
          
          
"[...] accelerometer and gyroscope 3-axial raw signals [...]. These time domain signals [...] were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeDomainBodyAccelerometer-XYZ and timeDomainGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz."

 [3] "timeDomainBodyAccelerometerMeanX"                              
 [4] "timeDomainBodyAccelerometerMeanY"                              
 [5] "timeDomainBodyAccelerometerMeanZ"                              
 [6] "timeDomainBodyAccelerometerStandardDeviationX"                 
 [7] "timeDomainBodyAccelerometerStandardDeviationY"                 
 [8] "timeDomainBodyAccelerometerStandardDeviationZ"                 
 [9] "timeDomainGravityAccelerometerMeanX"                           
[10] "timeDomainGravityAccelerometerMeanY"                           
[11] "timeDomainGravityAccelerometerMeanZ"                           
[12] "timeDomainGravityAccelerometerStandardDeviationX"              
[13] "timeDomainGravityAccelerometerStandardDeviationY"              
[14] "timeDomainGravityAccelerometerStandardDeviationZ"
[21] "timeDomainBodyGyroscopeMeanX"                                  
[22] "timeDomainBodyGyroscopeMeanY"                                  
[23] "timeDomainBodyGyroscopeMeanZ"                                  
[24] "timeDomainBodyGyroscopeStandardDeviationX"                     
[25] "timeDomainBodyGyroscopeStandardDeviationY"                     
[26] "timeDomainBodyGyroscopeStandardDeviationZ"    


" [...] the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeDomainBodyAccelerometerJerk-XYZ and timeDomainBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeDomainBodyAccelerometerMag, timeDomainGravityAccelerometerMagnitude, timeDomainBodyAccelerometerJerkMagnitude, tBodyGyroscopeMagnitude, timeDomainBodyGyroscopeJerkMagnitude). 
[15] "timeDomainBodyAccelerometerJerkMeanX"                          
[16] "timeDomainBodyAccelerometerJerkMeanY"                          
[17] "timeDomainBodyAccelerometerJerkMeanZ"                          
[18] "timeDomainBodyAccelerometerJerkStandardDeviationX"             
[19] "timeDomainBodyAccelerometerJerkStandardDeviationY"             
[20] "timeDomainBodyAccelerometerJerkStandardDeviationZ"             
[27] "timeDomainBodyGyroscopeJerkMeanX"                              
[28] "timeDomainBodyGyroscopeJerkMeanY"                              
[29] "timeDomainBodyGyroscopeJerkMeanZ"                              
[30] "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
[31] "timeDomainBodyGyroscopeJerkStandardDeviationY"                 
[32] "timeDomainBodyGyroscopeJerkStandardDeviationZ" 
[33] "timeDomainBodyAccelerometerMagnitudeMean"                      
[34] "timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
[35] "timeDomainGravityAccelerometerMagnitudeMean"                   
[36] "timeDomainGravityAccelerometerMagnitudeStandardDeviation"
[37] "timeDomainBodyAccelerometerJerkMagnitudeMean"                  
[38] "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "timeDomainBodyGyroscopeMagnitudeMean"                          
[40] "timeDomainBodyGyroscopeMagnitudeStandardDeviation"
[41] "timeDomainBodyGyroscopeJerkMagnitudeMean"                      
[42] "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation   

frequencyDomain prefix: "a Fast Fourier Transform (FFT) was applied to some of these signals", producing: 
[43] "frequencyDomainBodyAccelerometerMeanX"                         
[44] "frequencyDomainBodyAccelerometerMeanY"                         
[45] "frequencyDomainBodyAccelerometerMeanZ"                         
[46] "frequencyDomainBodyAccelerometerStandardDeviationX"            
[47] "frequencyDomainBodyAccelerometerStandardDeviationY"            
[48] "frequencyDomainBodyAccelerometerStandardDeviationZ"            
[49] "frequencyDomainBodyAccelerometerMeanFrequencyX"                
[50] "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[51] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                
[52] "frequencyDomainBodyAccelerometerJerkMeanX"                     
[53] "frequencyDomainBodyAccelerometerJerkMeanY"                     
[54] "frequencyDomainBodyAccelerometerJerkMeanZ"                     
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"        
[56] "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[57] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"        
[58] "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[59] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"            
[60] "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
[61] "frequencyDomainBodyGyroscopeMeanX"                             
[62] "frequencyDomainBodyGyroscopeMeanY"                             
[63] "frequencyDomainBodyGyroscopeMeanZ"                             
[64] "frequencyDomainBodyGyroscopeStandardDeviationX"                
[65] "frequencyDomainBodyGyroscopeStandardDeviationY"                
[66] "frequencyDomainBodyGyroscopeStandardDeviationZ"                
[67] "frequencyDomainBodyGyroscopeMeanFrequencyX"                    
[68] "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[69] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                    
[70] "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[71] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"    
[72] "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"             
[74] "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"    
[76] "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[77] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"        
[78] "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                 
[80] "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency" 
