
The goal of thjs project was to apply all the concepts learned in the [Clima](https://github.com/nicobelo91/Clima-iOS13) app in order to create my own bitcoin price tracker app.
These concepts include: 
    - Protocols
    - Delegates
    - Use of APIs
    - Use of URLSessions
    - JSON Decoders
    - Closures
    - DispatchQueue
    
First, I created 3 IBOutlets:
![Image 1](https://i.imgur.com/fHaGMS0.png)

After that, I added the UIPickerViewDataSource and the UIPickerViewDelegate protocols to connect the functionality of the UIPickerView to the CoinViewController:
![Image 2](https://i.imgur.com/KCG3wKe.png)

Then, I used a URLSession and a JSONDecoder to use the information obtained from coinapi.io
![Image 3](https://i.imgur.com/N4odwej.png)

Lastly, I created a CoinManagerDelegate to update the User Interface.
![Image 4](https://i.imgur.com/W25UVR3.png)

This was the final result:
![Image 5](https://i.imgur.com/phagR6H.png)
