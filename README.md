# Laborator9-SSM
This is the ninth laboratory at Software for Mechatronics Systems, coordinated by Conf. Dr. Ing. Ciprian Ion Rizescu.

#### Brief
The task was to implement a graphical interface in `MATLAB` using `GUIDE`. The GUI must contain the logo of the faculty and of the university, it should have two buttons, one that when pressed will display the centric connecting rod-crank mechanism and the second to display the eccentric connecting rod-crank mechanism. The interface will also have an exit button from the application. </br></br>
Because I’m special, I also wanted to implement this in `JavaScript`, `HTML` and `CSS`.


## Results
#### Matlab Interface
![Matlab Interface](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/guide-interface.png?raw=true)

#### Matlab result
![Matlab result](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/matlab.png?raw=true)

#### Matlab centric
![Matlab centric](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/matlab-centric.png?raw=true)

#### Web App result
![Web App result](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/js.png?raw=true)

#### Web App centric
![Web App centric](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/js-centric.png?raw=true)

#### Web App eccentric
![Web App eccentric](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/js-excentric.png?raw=true)

#### Exit button functionality
![Exit button functionality](https://github.com/brittleru/Laborator9-SSM/blob/main/readme-imgs/exit-button.png?raw=true)

## Conclusion for the Matlab app
To add the images I used `Axes`, with `CreateFcn` and I added in that function the method `imshow()` with the path of the image. I used a `Panel` for the buttons, their functionality was written in the function `callback()` and their design was done with a property inspector. The title, name, group and date were added with `Static Text`, the design was done with property inspector.

You can check the site here: https://brittleru.github.io/robotics-laboratory-3/
