# CSE4/589: Modern Network Concepts - Programming Assignment 1

Welcome to Programming Assignment 1 for CSE4/589: Modern Network Concepts. This assignment is designed to introduce you to the basics of network programming. Please follow the instructions below to set up your environment and begin the assignment.

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

- Follow the directory structure as mentioned above.
- Use the `assignment1_package.sh` script to package your submission.
- Ensure your code compiles and runs as expected in the provided environment.
- Submit your assignment through the designated submission portal before the deadline.

Wishing you the best with your assignment!
