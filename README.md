# CSE4/589: Modern Network Concepts - Programming Assignment 1

Welcome to Programming Assignment 1 for CSE4/589: Modern Network Concepts, focused on developing a text chat application. This assignment involves building both client and server components to enable text communication over TCP connections. Follow the guidelines below to start your project.

## Objectives

The main goal is to develop a text chat application comprising one chat server and multiple chat clients, facilitating communication over TCP connections. The project is divided into two stages:

- **Stage 1:** Implement basic login functionality for the client and server applications.
- **Stage 2:** Implement advanced features based on Stage 1, enhancing the application's capabilities.

## Getting Started

You have the option to complete this assignment in either C or C++. To select your language of choice, execute the following command in your terminal. This will merge the chosen language branch into the main branch of your repository.

For C:
```
git merge c -m "lang option: c" --no-ff && git push origin main
```

For C++:
```
git merge cpp -m "lang option: cpp" --no-ff && git push origin main
```

## Directory Structure

After merging the chosen branch, your directory should follow the structure outlined below:

### For C:
```
.
├── README.md
├── assignment1_package.sh
├── grader
│   ├── grader.cfg
│   └── grader_controller
└── pa1
    ├── Makefile
    ├── include
    │   ├── global.h
    │   └── logger.h
    ├── logs
    ├── object
    └── src
        ├── assignment1.c
        └── logger.c
```

### For C++:
```
.
├── README.md
├── assignment1_package.sh
├── grader
│   ├── grader.cfg
│   └── grader_controller
└── pa1
    ├── Makefile
    ├── include
    │   ├── global.h
    │   └── logger.h
    ├── logs
    ├── object
    └── src
        ├── assignment1.cpp
        └── logger.cpp
```

## Resources

To assist you with the assignment, please refer to the following resources:

- **Assignment Handout:** [Link to Assignment Handout]
- **Assignment Template:** [Link to Assignment Template]
- **Assignment Part 1 Report Template:** [Link to Part 1 Report Template]
- **Assignment Part 2 Report Template:** [Link to Part 2 Report Template]

Please ensure you read through the handout thoroughly before starting the assignment to understand the requirements and deliverables.

## Support

For any doubts or clarifications, please refer to the [Piazza forum](https://piazza.com/class/lr5z5f8jkcz3hb) for our course. Make sure to follow the forum for updates and discussions related to the assignment.

## Submission Guidelines

- Use the `assignment1_package.sh` script to package your submission.
- Ensure your code compiles and runs as expected in the provided environment.
- Submit your assignment through the designated submission portal before the deadline.

Wishing you the best with your assignment!
