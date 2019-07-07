<h1>MPU6050 Accelerometer and Gyroscope C++ library</h1><br>
<h5>Copyright (c) 2019, Alex Mous<br>
Licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-4.0)</h5><br><br><br>

<h3>Description</h3><br>
&nbsp&nbsp&nbsp&nbspa basic control library for the MPU6050<br>
&nbsp&nbsp&nbsp&nbspprovides functions to read raw accelerometer data and fully corrected angles on any axis<br><br>

<h3>Function Definitions</h3><br>
&nbsp&nbsp&nbsp&nbsp__constructor__ (MPU6050)<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspint8_t addr - the address of the MPU6050 (usually 0x68; can find with command "i2cdetect -y 1" (may need to be installed - run "sudo apt-get install i2c-tools -y")<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspsets up i2c device and starts loop to read the angle<br>
&nbsp&nbsp&nbsp&nbspgetAccelRaw<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *x - pointer to the variable where the X axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *y - pointer to the variable where the Y axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *z - pointer to the variable where the Z axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgets the raw accelerometer values from the MPU6050 registers<br>
&nbsp&nbsp&nbsp&nbspgetAccel<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *x - pointer to the variable where the X axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *y - pointer to the variable where the Y axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *z - pointer to the variable where the Z axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgets the accelerometer values (in g), rounded to three decimal places<br>
&nbsp&nbsp&nbsp&nbspgetGyroRaw<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *roll - pointer to the variable where the roll (X) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *pitch - pointer to the variable where the pitch (Y) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *yaw - pointer to the variable where the yaw (Z) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgets the raw gyroscope values from the MPU6050 registers<br>
&nbsp&nbsp&nbsp&nbspgetGyro<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *roll - pointer to the variable where the roll (X) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *pitch - pointer to the variable where the pitch (Y) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *yaw - pointer to the variable where the yaw (Z) axis results should be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgets the gyroscope values (in degrees/second)<br>
&nbsp&nbsp&nbsp&nbspgetOffsets<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *ax_off - pointer to the variable where the accelerometer x axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *ay_off - pointer to the variable where the accelerometer y axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *az_off - pointer to the variable where the accelerometer z axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *gr_off - pointer to the variable where the gyroscope roll axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *gp_off - pointer to the variable where the gyroscope pitch axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *gy_off - pointer to the variable where the gyroscope yaw axis offset will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfinds the offsets needed<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspbefore running, place the module on a completely flat surface (check with a spirit level if possible) and make sure that it stays still while running this function, the results will be stored in the variables ax_off, ay_off, az_off, gr_off, gp_off, gy_off for accel x offset... and gyro roll offset..., take these values and put them into the MPU6050.h file (A_OFF_X, A_OFF_Y, A_OFF_Z, G_OFF_X, G_OFF_Y and G_OFF_Z)<br>
&nbsp&nbsp&nbsp&nbspgetAngle<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspargs:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspint axis - which axis to use (0 for roll (x), 1 for pitch (Y) and 2 for yaw (Z))<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfloat *results - pointer to the variable where the angle will be stored<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgets the current combined (accelerometer and gyroscope) angle<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNOTE: the yaw axis will return 0 unless 'calc_yaw' is set to true - See Parameters<br>

Parameters:<br>
&nbsp&nbsp&nbsp&nbspcalc_yaw<br>
&nbsp&nbsp&nbsp&nbspnbsp&nbsp&nbsp&nbsptype:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspbool<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfunction:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspset this to true when you want to calculate the angle around the yaw axis (remember to change this back to false after taking the yaw readings to prevent gyroscope drift)<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspthis is used to prevent drift because only the gyroscope is used to calculate the yaw rotation<br>
