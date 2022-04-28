# 01 - Analysis of a simple signal

In this project you will load in MATLAB a signal from different sources and plot it customizing the appearance of the figure and axis.

Solve the exercises by creating one or more scripts and/or functions in **this folder**

> Skills you will learn:
>
> - load data from `.mat` and `.csv` files
> - indexing a vector
> - plotting a mono-dimensional signal and perform some basic analysis.

## Requests

1. Load the signal and perform the following tasks by using the `signal.csv` file, the `signal.mat` file and the `createSignal()` function.
2. Considering that this signal was acquired at a sampling rate of 100Hz, plot the signal versus time in milliseconds.
3. The signal has some noise. Try to remove some of the noise without compromising the main oscillation in the signal. (find sources about the **running average**)
4. Try to remove the main oscillation in the signal. You should end up with the underlying linear trend in the signal that is a general trend upwards for the first part and a trend downwards for the last part. Using this information plot the original signal with a different colors for the first part and the second part
5. Plot all of these results in a figure like this one. Try to reproduce **as much as possible** the styling.
![image](https://user-images.githubusercontent.com/39329654/165727896-f501673f-0043-4070-b2b0-233a5686f5bd.png)

## Cheats

Here are a few tips to help you solve the project. Try to avoid looking at the content of this section as much as possible.

It is important that initially you try to solve the exercises with as much independence as possible.

<details>
  <summary>Loading data</summary>
  
  Useful functions that you might want to check out:

  - `doc matfile`
  - `doc readtable`
  - `doc readmatrix` 
  
</details>

<details>
  <summary>Plotting</summary>
  
  Useful functions that you might want to check out:

  - `doc plot`
  - `doc subplot`
  - `doc figure`
  - `doc legend`
  
</details>

<details>
  <summary>Signal Processing</summary>
  
  Useful functions that you might want to check out:

  - `doc medfilt1`
  - `doc smooth`
  - `doc smoothdata` 
  
</details>

---

In the folder there is also a script `solution.m` that implements the solution to the last point. Try not to look at it unless you are really desperate.