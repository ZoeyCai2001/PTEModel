# MCM
Power-Time-Energy Model in Cycling. Developed a user-friendly time and physical effort allocation strategy for riders in cycling competitions.
## 1.1 Problem Background

Cyclists are divided into different categories, such as sprinters, pursuers, time trialists, and so on. Different types of riders may have different power curves. The power curve depicts how long an athlete can sustain a given power output, which can help cyclists plan their energy more wisely during the competition.

There are many types of cycling competitions, but the common denominator is that all cyclists complete the same distance in less time than anyone else. Therefore, cyclists are always looking for how to complete a given distance in less time, and how to develop training plans and competition strategies through the power curve becomes increasingly important.

## 1.2 Restatement of the Problem

Build a mathematical model that describes the relationship between a cyclist’s position and the energy released, which can be applied to different types of riders. The model must take into account the constraints on the total energy released by the cyclist, and the limits of both past overloading and the power curve.

- The first problem requires describing power profiles of two types of cyclists, one of which is a time trial specialist, and consider different genders.
- The second problem talks about the application of the model in various time trial races, including the 2021 Olympic Time Trial course, 2021 UCI World Championship time trial course, and a self-designed course with at least four sharp turns and a nontrivial road grade.
- The third problem argues the potential impact of different environmental conditions. It demands us to test the sensitivity of the model.
- The fourth problem focuses on cyclists’ imperfect execution of power distribution. It asks to provide a detailed plan for riders.
- The fifth problem discusses the extension of the model. The aim is to produce the best distribution of energy for teams of six in a team time trial.

## 1.3 Our Work

In a gesture to plot the power profile, propose the optimal riding strategy, and test the sensitivity of the model, several works are done to build it and then solve the problem.

- Accessing the data: As it’s hard to get real-time speed data of a certain athlete in a formal competition, we changed our course to excavate data from standard pace, past papers, and other resources. The data sources are summarized in table [1].
- | Dataset                | Website                                          | Source                                       |
|------------------------|--------------------------------------------------|----------------------------------------------|
| Cycling power charts   | [https://www.trainingpeaks.com/blog/power-profiling/](https://www.trainingpeaks.com/blog/power-profiling/)   | -                                         |
| UCI results            | [https://www.flanders2021.com/en/races](https://www.flanders2021.com/en/races)   | -                                         |
| Olympics results       | [https://www.procyclingstats.com/race/olympic-games-itt/2021/result](https://www.procyclingstats.com/race/olympic-games-itt/2021/result) | -                                         |
| Maps                   | [https://www.openstreetmap.org/about/](https://www.openstreetmap.org/about/)     | -                                         |
| Cycling details        | [https://www.strava.com/activities](https://www.strava.com/activities)         | -                                         |

- Presenting our model: In order to investigate the problem deeper, we divide our model into three sub-models. The first one is the establishment of Power Curve Fitting to describe athletes’ ability in different exercise intensity. The second one is about power distribution during competition process, Power-Time-Energy Equation, which establishes the relationship between output energy and demand energy. The third one is to solve the optimal strategy for a certain player and certain competition.
- Sensitivity analysis and extension: Taking weather condition and rider deviations into account, we apply the extended model with UCI data to evaluate the reliability of our model through sensitivity analysis. Also, we extend our model to team time trial.

