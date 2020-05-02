# Code Book
This code book describes the variables in the final tidy data set, which can be found in the text file, ```tidy_data.txt```.
The variable names can be found in the first row of the text file.

### Variables
```subject``` is an integer that refers to the identifier for each subject (aged 19-48 years) who performed the activity for each window sample. 
Its range is from 1 to 30, as the subject group consists of 30 volunteers.

```activity``` is a string that lists the activity the subjects were performing when a certain measurement was taken. 
Activities include: 
- ```WALKING```
- ```WALKING_UPSTAIRS```
- ```WALKING_DOWNSTAIRS```
- ```SITTING```
- ```STANDING```
- ```LAYING```

Remaining variables are feature variables. Features are normalized and bounded within [-1,1]. 
They can be divided into two main categories: Time-domain signals and Frequency-domain signals. Time domain is derived from the capture of accelerometer and gyroscope raw signals. Frequency domain is derived from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

Both categories can be further broken down into:

Average body acceleration in the X, Y and Z directions:

- ```time_domain_body_accelerometer_mean_X-axis```
- ```time_domain_body_accelerometer_mean_Y-axis```
- ```time_domain_body_accelerometer_mean_Z-axis```

- ```frequency_domain_body_accelerometer_mean_X-axis```
- ```frequency_domain_body_accelerometer_mean_Y-axis``` 
- ```frequency_domain_body_accelerometer_mean_Z-axis```


Standard deviation of body acceleration in the X, Y and Z directions:

- ```time_domain_body_accelerometer_standard_deviation_X-axis``` 
- ```time_domain_body_accelerometer_standard_deviation_Y-axis``` 
- ```time_domain_body_accelerometer_standard_deviation_Z-axis``` 

- ```frequency_domain_body_accelerometer_standard_deviation_X-axis``` 
- ```frequency_domain_body_accelerometer_standard_deviation_Y-axis``` 
- ```frequency_domain_body_accelerometer_standard_deviation_Z-axis```


Average gravity acceleration in the X, Y and Z directions:

- ```time_domain_gravity_accelerometer_mean_X-axis``` 
- ```time_domain_gravity_accelerometer_mean_Y-axis``` 
- ```time_domain_gravity_accelerometer_mean_Z-axis```

- Note: Not applicable for frequency domain.


Standard deviation of gravity acceleration in the X, Y and Z directions:

- ```time_domain_gravity_accelerometer_standard_deviation_X-axis```
- ```time_domain_gravity_accelerometer_standard_deviation_Y-axis``` 
- ```time_domain_gravity_accelerometer_standard_deviation_Z-axis```

- Note: Not applicable for frequency domain.


Average body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

- ```time_domain_body_accelerometer_jerk_mean_X-axis```
- ```time_domain_body_accelerometer_jerk_mean_Y-axis``` 
- ```time_domain_body_accelerometer_jerk_mean_Z-axis```

- ```frequency_domain_body_accelerometer_jerk_mean_X-axis``` 
- ```frequency_domain_body_accelerometer_jerk_mean_Y-axis``` 
- ```frequency_domain_body_accelerometer_jerk_mean_Z-axis```


Standard deviation of body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

- ```time_domain_body_accelerometer_jerk_standard_deviation_X-axis``` 
- ```time_domain_body_accelerometer_jerk_standard_deviation_Y-axis``` 
- ```time_domain_body_accelerometer_jerk_standard_deviation_Z-axis```

- ```frequency_domain_body_accelerometer_jerk_standard_deviation_X-axis``` 
- ```frequency_domain_body_accelerometer_jerk_standard_deviation_Y-axis``` 
- ```frequency_domain_body_accelerometer_jerk_standard_deviation_Z-axis```


Average body angular velocity in the X, Y and Z directions:

- ```time_domain_body_gyroscope_mean_X-axis``` 
- ```time_domain_body_gyroscope_mean_Y-axis``` 
- ```time_domain_body_gyroscope_mean_Z-axis```

- ```frequency_domain_body_gyroscope_mean_X-axis``` 
- ```frequency_domain_body_gyroscope_mean_Y-axis``` 
- ```frequency_domain_body_gyroscope_mean_Z-axis```


Standard deviation of body angular velocity in the X, Y and Z directions:

- ```time_domain_body_gyroscope_standard_deviation_X-axis``` 
- ```time_domain_body_gyroscope_standard_deviation_Y-axis``` 
- ```time_domain_body_gyroscope_standard_deviation_Z-axis```

- ```frequency_domain_body_gyroscope_standard_deviation_X-axis``` 
- ```frequency_domain_body_gyroscope_standard_deviation_Y-axis``` 
- ```frequency_domain_body_gyroscope_standard_deviation_Z-axis```


Average body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

- ```time_domain_body_gyroscope_jerk_mean_X-axis``` 
- ```time_domain_body_gyroscope_jerk_mean_Y-axis``` 
- ```time_domain_body_gyroscope_jerk_mean_Z-axis```

- Note: Not applicable for frequency domain.


Standard deviation of body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

- ```time_domain_body_gyroscope_jerk_standard_deviation_X-axis```            
- ```time_domain_body_gyroscope_jerk_standard_deviation_Y-axis```            
- ```time_domain_body_gyroscope_jerk_standard_deviation_Z-axis```

- Note: not applicable for frequency domain.


Average and standard deviation of magnitude of body acceleration:

- ```time_domain_body_accelerometer_magnitude_mean```
- ```time_domain_body_accelerometer_magnitude_standard_deviation```

- ```frequency_domain_body_accelerometer_magnitude_mean```                 
- ```frequency_domain_body_accelerometer_magnitude_standard_deviation```


Average and standard deviation of magnitude of body acceleration jerk (derivation of the acceleration in time):

- ```time_domain_body_accelerometer_jerk_magnitude_mean```                 
- ```time_domain_body_accelerometer_jerk_magnitude_standard_deviation```  

- ```frequency_domain_body_accelerometer_jerk_magnitude_mean```             
- ```frequency_domain_body_accelerometer_jerk_magnitude_standard_deviation```


Average and standard deviation of magnitude of body angular velocity:

- ```time_domain_body_gyroscope_magnitude_mean```                          
- ```time_domain_body_gyroscope_magnitude_standard_deviation```

- ```frequency_domain_body_gyroscope_magnitude_mean```                     
- ```frequency_domain_body_gyroscope_magnitude_standard_deviation```


Average and standard deviation of magnitude of body angular velocity jerk (derivation of the angular velocity in time):

- ```time_domain_body_gyroscope_jerk_magnitude_mean```                       
- ```time_domain_body_gyroscope_jerk_magnitude_standard_deviation```

- ```frequency_domain_body_gyroscope_jerk_magnitude_mean```                  
- ```frequency_domain_body_gyroscope_jerk_magnitude_standard_deviation``` 

### Units
- Variables containing accelerometer: g's (9.81 m.s⁻²)
- Variables containing gyroscope: radians per second (rad.s⁻¹).
- Variables containing magnitude: calculated using Euclidiean norm. 
