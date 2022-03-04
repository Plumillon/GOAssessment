# gamers.online assessment

# TLDR;
## How to run
Assuming you have Flutter installed on your env.

2 choices:
* Via your preferred IDE, example for example Android Studio:
  * create a Flutter run configuration with `lib/presentation/main.dart` entrypoint.
  * Click on run.
* Via CLI:
  * run `flutter pub get`
  * run `flutter packages pub run build_runner build --delete-conflicting-outputs`
  * run `flutter run lib/presentation/main.dart`


# The context
This project is an assessment asked by gamers.online during the interview process of a Frontend Developer position.

    Introduction:
    You are working for gamers.online as a Frontend Developer. The company is connecting gamers with other gamers and businesses interested in interaction with gamers. This is done via a central API Infrastructure, connecting different applications with the central data storage.
    As both the API infrastructure and the data store are developed and managed by gamers.online, Frontend Applications can access any information which might be required to realize a customer service.
    You are assigned with the task of designing a new frontend application and to present the result to the team. The team will need to understand how the application is used by the customer. Further, the team needs to be able to determine the technical requirements for changes on the API and Data Bases.

    Task
    Design a mobile app, that allows users to access user profiles. The user needs to be able to change certain information on his own profile, while other user profiles should be accessible in read only mode.
    Where possible, the application should make use of existing information. The list of available information is attached to the task.

    Concept
    Your concept should allow others to understand the completeness of your application. While it is not necessary to provide fully designed screens for all aspects of the applications, at least the screens with the major functionality should be drafted in a way, that the planned design can be understood.
    If you are introducing any new information to be integrated in the database, you should provide this information in an easily accessible way, so that the team will be able to review the requirements.
    You will have 15 minutes to present your concept to the team. It is up to you, which tools you like to use for this. We kindly request you to prepare all relevant parts of the presentation to be handed over, as well as other documents you are creating in the process. We would like to have a closer look at this after your presentation.

    Technical
    You are free to choose any tool you like to build a part of your application. You can mockup what you feel you need. This might be data source or an API to access dummy data for your showcase. We assume you would like to show us what you’ve build during the presentation. But we want to learn and understand how you are doing things.
    Thus, we kindly request you to make your code and all prerequisites to make it run available to us.
    Keep in mind, that we do not expect you to deliver a maximum number of lines of code. We love clean code. We love well documented code. And we love people who thought to the end, before starting to code.


# The project
## Choices
### Architecture
I have chosen the Clean Architecture (more in [Uncle Bob definition](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)), layering the application in 3 different layers (data, domain, and presentation).

Some benefits of doing so includes: Framework independence, UI independence, Separation of concern, Highly testable.

### Technologies
I notably used the following lib and design pattern:
* MVVM for the presentation layer with BloC.
* GetIt for dependencies injection.
* Stream and Future for all flows.
* Freezed for Sealed Class and serialization.
* Logger.

## Limitations
Due to the very limited time, here is the improvement the app need:
* Not a real app.
* No error handling.
* Data are stubbed.
* No code coverage (no UT).

## Goal of the assessment
This code is a base to show how I work and to open a dialogue.

I would be happy to speak about the solutions I would implement. Presentation to follow!