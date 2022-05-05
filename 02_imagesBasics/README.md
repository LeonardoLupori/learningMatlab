# 02 - Working with digital images

## ❗ Requirements

You will need the MATLAB `Image Processing Toolbox`.
Make sure you have that installed by looking at the **Add-ons** menu in the home tab of the MATLAB GUI.
Search for `Image Processing Toolbox` and install it if you don't have it.
 

In this project you will 

Solve the exercises by creating one or more scripts and/or functions in **this folder**

> Skills you will learn:
>
> - load images data
> - working with RGB digital images

## Learning resources

- [What is a digital image? (video)](https://www.youtube.com/watch?v=06OHflWNCOE)
- [How are digital images captured? (video)](https://www.youtube.com/watch?v=LWxu4rkZBLw)
- [Image resizing (video)](https://www.youtube.com/watch?v=AqscP7rc8_M)
- [Digital Images wiki](https://en.wikipedia.org/wiki/Digital_image)
- [Image Processing Toolbox](https://it.mathworks.com/help/images/index.html)

## Requests

### Load an RGB image and process each channel

1. Load the image `cells.png` in matlab and show it
2. The image is an RGB 8-bit image. Plot all the channels separately as gray scale images.  
![image](https://user-images.githubusercontent.com/39329654/166896608-4bd3d3d7-5916-41f9-92b1-676dc8cca1f9.png)

3. Select the blue channel (3rd) and look at the histogram of the image. How many pixels are saturated (completely white or completely dark)?  
![image](https://user-images.githubusercontent.com/39329654/166898181-8e157590-8508-41b8-91e9-8d7a626ab8fa.png)

4. 🌶 Draw with your mouse two different region of interest (ROIs) on the RGB image and for each of those 2 region calculate the mean, median and mode pixel intensity of pixels inside that region. Save this data as a MATLAB table. Try to select two region with very different brightness so it's easier to check whether the results make sense.  
![image](https://user-images.githubusercontent.com/39329654/166902391-384159d6-49de-4668-910b-9e773d0d5dc3.png)

5. 🌶 Repeat exercise #4 with five different ROIs. Consider how many lines you have to change to solve this question.  
Then, try to write a version of the code for exercise #4 using as much abstraction as possible so that you have to modify only a single line to go from the solution of exercise #4 to that of #5.

### Segment an object with a luminance threshold

The task of creating masks for different classes of object is called **image segmentation** and is a very common and important step in computer-based image processing.  
> More info here: [image segmentation in MATLAB](https://it.mathworks.com/discovery/image-segmentation.html)

Segmenting an object from an image means that you create another image (only 2D, not an RGB one) where each pixels is either 0 or 1. This is called a binary image (sometimes referred to as a *mask*).

Consider the image:  
`img = imread('mouse.png')`  
convert it to a grayscale image with  
`img = rgb2gray(img)`

6. Segment the mouse in the image using the fact that the mouse is much darker than the background.  
![image](https://user-images.githubusercontent.com/39329654/166918233-c1c32aa0-0b48-4224-8b45-8c2007774072.png)

### Work with different color spaces

When you need to segment an object in an RGB image instead of a grayscale, you can use color information to help you segment the object that you want.

The precise color of a single pixel can be represented by a combination of 3 color values (red, green and blue) in RGB images, but this is not the only possible way. The same color can be for example be represented by defining the hue, the luminance and saturation, as used in the HSV color space.

> More info here: [RGB and HSV color spaces](https://en.wikipedia.org/wiki/HSL_and_HSV)

Working with images in the HSV space can be useful if you want to select pixels based on their hue, luminance or saturation.

consider the image:

`rgb = imread('coloredChips.png');`

![image](https://user-images.githubusercontent.com/39329654/166910389-d9a1f412-4f3e-4b20-96b3-2f3b468d171c.png)

7. 🌶🌶 Try to create a binary images where each pixel is 1 only on top of the **blue chips** and 0 otherwise.  
![image](https://user-images.githubusercontent.com/39329654/166919745-cb665b03-4fb4-4b92-97f8-09d05ce348ae.png)

---

## Cheats

Here are a few tips to help you solve the project. Try to avoid looking at the content of this section as much as possible.

It is important that initially you try to solve the exercises with as much independence as possible.

<details>
  <summary>Loading and showing images</summary>
  
  Useful functions that you might want to check out:

  - `doc imread`
  - `doc imshow`
  - `doc image`
  - `doc imagesc` 
  
</details>

<details>
  <summary>Histogram</summary>
  
  Useful functions that you might want to check out:

  - `doc imhist`
  - `doc histogram`
  - `doc histcounts`
  
</details>

<details>
  <summary>ROIs</summary>
  
  Useful functions that you might want to check out:

  - `doc drawfreehand`
  - `doc createmask`
  - `doc table`
  
</details>

<details>
  <summary>Segmentation</summary>
  
  Useful functions that you might want to check out:

  - `doc imbinarize`
  - `doc rgb2hsv`
  - One strategy could be to try to find some **threshold values** that you can use to threshold the image.
  - **H**, **S** and **V** channels for the image
  ![image](https://user-images.githubusercontent.com/39329654/166914016-ad15e4d3-76f7-436e-9688-74684c36fe43.png)
  - `doc createmask`
  - `doc table`
  
</details>

---

In the folder there is also a script `solution.m` that implements the solution to the last point. Try not to look at it unless you are really desperate.