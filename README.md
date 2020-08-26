<h1>Supervised Learning Practice</h1>
<h2>Description</h2>
<p>
  This project was built to test my understandings of logistic regression for binary classicifacion problems. It can predict whether a patient is sick with breast cancer, provided enough input data (mean radius, texture, perimeter, area, smoothness). The algorithm was trained on 550 sets of inputs and managed to reach an accuracy of 60% in its guesses. The data was taken from <a href="https://www.kaggle.com/merishnasuwal/breast-cancer-prediction-dataset">here</a>. Graphical representations of the data can be seen in five graphs that pop up at the beginning of the program (after the data is loaded). 
  </br>
  In order to find the best parameters (Theta) this time I used a function provided by Matlab called <i>fminunc</i> which finds the minimum value of an unconstrained multivariable function. Only the number of iterations must be specified while the learning rate is chosen automatically by the function.
</p>
<h2>Results</h2>
<p>
  The script managed to correctly predict the correct results for 15-20 patients with a 60% accuracy. If more data was provided, I believe the accuracy would be better, however 60% is still a good start.
</p>
<h2>Concepts practiced</h2>
<ul>
  <li>Binary Classification Problem</li>
  <li>Logistic Regression</li>
  <li>Feature Scaling using Mean Normalization</li>
</ul>
