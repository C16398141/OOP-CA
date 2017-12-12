# OOP-CA
<h1>Goal: Create a HUD for a super suit with star destroying capabilities</h1>

<h3>Youtube URL:</h3>

https://www.youtube.com/watch?v=txmhuPwwiiw

<h3>Embedded Video:</h3>

<a href="http://www.youtube.com/watch?feature=player_embedded&v=txmhuPwwiiw" target="_blank"><img src="http://img.youtube.com/vi/txmhuPwwiiw/0.jpg" 
alt="OOP Assignment 1" width="240" height="180" border="10" /></a>


<h3>Instructions</h3>

1. Get your headphones ready, your ears are in for a treat.

2. Click on Run Button in Processing.

3. Move your cursor around. 
  You will notice a hand object moving with the cursor.
  It is limited to a certain range as the arm can't extend past its limits.
  
 4. Click with the cursor in position.
  You'll see a plasma ball being charged within the hand.
  When it is fully charged it will hurtle forwards in its trajectory, growing smaller and smaller as it moves away from you.

5. If the blast happens to connect with one of the very distant stars then the star will cease.
    If it misses the visible targets (within or outside the zoom function) then it will become too small to see.

6. You can see how long you have to wait until the hand cannon is fully reloaded with the measure on the left of the HUD.

7. Click on the Select Target button.
  You'll find that a border is placed around the relevant stars.
  The star's details are displayed in the top left of the HUD.
  Each click of this button selects the next available star.
  
 <h3>How The Project Was Coded</h3>
  
  I began by creating classes for the objects that I planned on implementing. For each of those classes, methods were made if they had functions to fulfill including display and fire etc. In the main file I displayed some of the borders and design elements using methods. I created an arraylist of star objects of randomly created values. I passed those values through functions to check if collisions happened or to even select a certain star as a target. I added dramatic music as there's no higher level of drama than destroying galactic raging hot billion year old beasts. On clicking I made the code check whether it was for a button or the default firing before calling methods.
  
  I set out with a vision of recreating iron man's pulse hand cannon.  I was happy that the user had freedom to control the hand's movement and that on firing, there was a charging process like the movies. I liked the trajectory of the plasmaball and that the user could see when they could fire again. (I actually had a rapid fire function at one point which erradicated the stars quite effectively but it didn't make sense to charge multiple plasmaballs at the same time.)
  
  <h3>Problems and Decision Making</h3>
  
  The largest problem I had was accessing the variables of an object of a class passed into a function in another class. I tried the correct notation, PVectors instead of the x and y coordinate variables and countless other ways and was forced to create arrays for the variables and pass them instead. 
  I had the idea of altering the fire button so that when a star had been targeted to shoot at that target but it was betraying my vision of a user controlled system. I wanted a man to be essential inside the suit and achieve his/her own interactive success and failures instead of the more efficient yet boring and restrictive computer controlled suit. 
  On collision of the plasmaball with a star I had originally planned on changing the star's status to 0 aka dead and then prompt the isDead tool using polymorphism to remove the star instance yet afterwards in loops to access all of the stars it would end up skipping a variable so I merely altered the coordinates to a dead zone (0,0).
  I considered importing the stars' values through a csv file yet I wanted each experience running the code to be different so I opted for random generation of the values instead.
