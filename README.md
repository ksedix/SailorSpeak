# SailorSpeak
## About
### An SMCP language learning application
Standard Marine Communication Phrases, referred to as SMCP, are a crucial part of communication at Sea. That's why the International Maritime Organization(IMO) has made it mandatory according to the IMO convention for all officers in management and operational positions onboard to be ‘conversant with SMCP’ at different levels.
### Chalmers University of Technology
Chalmers University of Technology has a long tradition of teaching in Shipping and Maritime technology. As such, teaching SMCP to its students has been a key focus. The University was looking for a new, modern and engaging language learning application to replace an old application to teach SMCP to its students. A proposal was made by the University for students to develop such an application as part of their bachelor thesis. 

As a result, SailorSpeak was created in the spring of 2023 by the students Mirco Ghadri and Zakariya Omar as part of their bachelor thesis in computer science. The full bachelor thesis can be read and downloaded here:
<a href="https://odr.chalmers.se/items/632b5fb8-6634-4991-a35f-9c453edc7174" target="_blank">Bachelor Thesis</a>

## Getting Started
### Branches

#### Flutterflow
The flutterflow branch contains the code of the application that is on flutterflow. This is not the code of the final application. The reason is that some manual code additions could not be done inside flutterflow due to limitations in the low-code builder. Hence, they were done outside of flutterflow using visual studio code.

#### Main
The main branch contains the final application, with the manual code additions. These manual code additions were necessary since they could not be done inside of flutterflow. This includes voice recording functionality and custom logic.

#### Web
This is the application compiled for web using the command `flutter build web` on the code in the main branch of the project.

### Links
#### Web app(final version)
https://ksedix.github.io/SailorSpeak/  
The final web app based on the main branch of the project.
#### Web app(flutterflow version)
https://sailor-speak-hh884k.flutterflow.app/    
The web app based on the flutterflow branch of the project. This web app is incomplete and limited in that it does not have voice recording/playback functionality since it was not possible to implement in flutterflow. However, the games and the dictionary work fine.
#### Flutterflow project
https://app.flutterflow.io/project/sailor-speak-hh884k  

FlutterFlow projects are built to run on the Flutter _stable_ release.
