# Class Materials for Bates ECON/DCS 368: Big Data and Economics/Data Science for Economists

[Full syllabus with official policies](https://github.com/big-data-and-economics/big-data-class-materials/blob/main/syllabus/syllabus.pdf)

[`Lectures`](#lectures) | [`Goals`](#goals-for-this-course) |
[`Other details`](#other-details) | [`FAQ`](#faq) | [`License`](#license)

# Feedback

I am constantly trying to improve this course. Provide [feedback](https://docs.google.com/forms/d/e/1FAIpQLScZyphM1fwb6GBH7HtGx4H_hwW6sGGVfZ3MXFnFLNlawQoOsQ/viewform?usp=sf_link).

- Class Hours: T/Th 9:30am-11am

# Office hours:
My office hours are: 
- Tuesdays 3-4pm
- Wednesdays 10:30am-11:30am

My office is in Pettengill 161.

You can make an appointment at [here](https://calendar.google.com/calendar/u/0/appointments/schedules/AcZssZ02UMZxGreYvp2MnVl5VkXrIQNOXpFuu6vOI-loXJZIJE141Ml4Qh05FCPbw73kVLUjSFCRhM61). 

## Getting in touch

In this course, I ask that you use GitHub Discussions and `Issues` to ask questions about the problem sets, exercises, and other class materials. This is so that everyone can benefit from the answer. Also, it will encourage collaboration (and declutter my inbox). A portion of the grade is based on participation in GitHub Issues.

### Course Organization Page

Every repository will be linked in the [organization page](https://github.com/big-data-and-economics). This is where you will find all the repositories for the problem sets, final projects, and other class materials. It also hosts discussions. 

### GitHub Discussions

The [GitHub Discussions](https://github.com/orgs/big-data-and-economics/discussions) page is hosted on the overall Classroom Organization (details on Organization vs. Repository in [FAQ](#faq)). It is private and can be used like any traditional online forum. You can use it to ask questions, answer questions, and discuss topics related to the course. I will be monitoring the discussions and will answer questions as they come up. I encourage you to answer each other's questions as well.

I will also make announcements for the benefit of the course here. 

### GitHub Issues

GitHub `Issues` are for repository-specific questions. 

If you would like to discuss a private matter, you can of course email me at kcoombs [at] bates.edu. I will respond as quickly as possible. If you do need to email me, please include "ECON368" in the subject line. If you email me a question that would benefit the whole class or someone else in the class could answer, I will respond by asking you to post it to GitHub Discussions or Issues. 

# Class updates

Check the [discussions page](https://github.com/orgs/big-data-and-economics/discussions/4) for most recent updates. 

# Lectures 

*Note: While I have provided PDF versions of the lectures, they are best viewed as HTMLs.*

The course is broken up into three rough sections. 

- Part 1 covers basics of empirical organization, data gathering, and organizing that are not "big data" specific
- Part 2 covers data description, econometrics, and causal inference that are possible with big data
- Part 3 covers machine learning techniques that are possible with big data

Parts 2 and 3 will highlight examples of using big data to address social problems.

*Note: The syllabus is always subject to change based on how the course is progressing.*

## Part 1: Data Science Basics

### Week 1: Introduction to Data Science

Thursday (2025-01-09): Introduction ([.html][01-Intro.html], [.pdf][01-Intro.pdf], [.Rmd](lectures/01-intro/01-Intro.Rmd))

- Exercise due before class: [Start up exercise](https://github.com/big-data-and-economics/exercises/tree/main/00-startup)
- In-class activity: [Intro-to-R](https://github.com/big-data-and-economics/exercises/tree/main/01-intro-to-r)

### Week 2: Git and Empirical Organization

Tuesday (2025-01-14): Empirical Organization [.html][02-empirical-workflow.html], [.pdf][02-empirical-workflow.pdf], [.Rmd](lectures/02-empirical-workflow/02-empirical-workflow.Rmd)

- Due before class: [Read Code and Data for the Social Sciences](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) by Gentzkow and Shapiro and share a story of a non-reproducible workflow that caused you problems on the [Discussions forum](https://github.com/orgs/big-data-and-economics/discussions/4)
- In-class activity: [MRE](https://github.com/big-data-and-economics/exercises/tree/main/02-mre-exercise)

Thursday (2025-01-16): Git and Github ([.html][02-Git.html], [.pdf][02-Git.pdf], [.Rmd](lectures/02-git/02-Git.Rmd))

- Exercise due before class: [Introduction to Git][datacamp] and [Introduction to Github Concepts][datacamp]
- In-class activity: [Git Basics](https://github.com/big-data-and-economics/exercises/tree/main/03-git-basics)
- [Problem Set 1 assigned](https://github.com/big-data-and-economics/ps1-nlsy-income-mob), Fork, clone, and make at least one commit by next class. 

### Week 3: R Basics

Tuesday (2025-01-21): R basics ([.html][04-rlang.html], [.pdf][04-rlang.pdf], [.Rmd](lectures/04-rlang/04-rlang.Rmd)) and (Git spillover)

- Exercise due before class: [Datacamp Introduction to R: R Basics and Data frames][datacamp], 
- In-class exercise: [File paths and modular files](https://github.com/big-data-and-economics/exercises/tree/main/04-modular-code)

Thursday (2025-01-23): Professor away, CAT leads class

- Exercise due before class: [Datacamp: Reporting with RMarkdown](https://app.datacamp.com/learn/courses/reporting-with-rmarkdown), [Watch STAT545 video on RMarkdown's](https://www.youtube.com/watch?v=ZzDSkBgt9xQ) -- no deliverable
- In-class exercise: [R tutorial on Rmarkdowns led by CAT](https://github.com/big-data-and-economics/exercises/tree/main/05-first-rmarkdown)

### Week 4: Tidyverse and Data Tips

Tuesday (2025-01-28): Data Tips ([.html][03-data-tips.html], [.pdf][03-data-tips.pdf], [.Rmd](lectures/03-data-tips/03-data-tips.Rmd))
- Exercise due before class: Post a data quality/visualization checklist to the [Discussions forum](https://github.com/orgs/big-data-and-economics/discussions/11), [Watch STAT545 video on Reading/Writing data](https://www.youtube.com/watch?v=2nHuNu6Zaqk)
- **Optional:** [Datacamp: Introduction to Importing Data in R, Chapter 2: readr and data.table][datacamp]
- In-class activity: [Data checks](https://github.com/big-data-and-economics/exercises/tree/main/06-data-checks)

Thursday (2025-01-30): Tidyverse ([.html][05-tidyverse.html], [.pdf][05-tidyverse.pdf], [.Rmd](lectures/05-tidyverse/05-tidyverse.Rmd))

- Exercise due before class: [Datacamp: Introduction to Tidyverse][datacamp] 
- In-class activity: [Tidying data](https://github.com/big-data-and-economics/exercises/tree/main/07-tidyverse)

### Week 5: Spatial Analysis

Tuesday (2025-02-04): Opportunity Atlas ([.html][09-oppatlas.html], [.pdf][09-oppatlas.pdf], [.Rmd](lectures/09-oppatlas/09-oppatlas.html))
- Exercise due before class: [Review Opportunity Atlas](https://opportunityinsights.org/wp-content/uploads/2018/10/atlas_paper.pdf) and/or [Watch this lecture](https://www.youtube.com/watch?v=P0NvsWDKwvs) and discuss the questions on the [Discussions forum](https://github.com/orgs/big-data-and-economics/discussions/14)
- Class activity: [Code review](https://github.com/big-data-and-economics/exercises/tree/main/08-code-review)
- Problem Set 1 due before class
- [Problem Set 2](https://github.com/big-data-and-economics/ps2-opportunity-atlas) assigned

Thursday (2025-02-06): Spatial Analysis ([.html][08-spatial.html], [.pdf][08-spatial.pdf], [.Rmd](lectures/08-spatial/08-spatial.Rmd))
- Exercise due before class: [Analyzing Census Data in R: Chapter 1 and 4][datacamp] and [Request and activiate Census Data API Key](https://api.census.gov/data/key_signup.html) (If you encounter issues, let me know in GitHub Discussions.)
- Class activity: Make maps!

### Week 6: Acquiring Web Data

Tuesday (2025-02-11): Scraping in Research ([.html][06a-scraping-in-research.html], [.pdf][06a-scraping-in-research.pdf], [.Rmd](lectures/06a-scraping-in-research/06a-scraping-in-research.Rmd))
- Exercise due before class: [Data camp: Intermediate Importing Data in R - Chapter 4](https://app.datacamp.com/learn/courses/intermediate-importing-data-in-r)
- Class activity: [APIs](https://github.com/big-data-and-economics/exercises/tree/main/10-web-apis) 

Thursday (2025-02-13): CSS ([.html][06-web-css.html], [.pdf][06-web-css.pdf], [.Rmd](lectures/06-web-css/06-web-css.Rmd)) 

- Exercise due before class: [Data camp: Intermediate Importing Data in R - Chapter 3](https://app.datacamp.com/learn/courses/intermediate-importing-data-in-r)
- Class activity: [Scrape websites](https://github.com/big-data-and-economics/exercises/tree/main/11-web-scraping)

### Week 7: Winter Break

## Causal Inference

### Week 8: Causal Inference and Regression

Tuesday (2025-02-25): Causal Inference ([.html][10a-causal-inference.html], [.pdf][10a-causal-inference.pdf], [.Rmd](lectures/10a-causal-inference/10a-causal-inference.Rmd))

- Exercise due before class: [Watch Econometrics: Inference and Identification](https://www.youtube.com/watch?v=18VpjvKKrJQ) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/26)
- Class activity: [Causality and simulations](https://github.com/big-data-and-economics/exercises/tree/main/12-causal-inference)
- Problem Set 2 due before class
- Problem Set 3 assigned

Thursday (2025-02-27): Control Variables ([.html][10-control-variables.html], [.pdf][10-control-variables.pdf], [.Rmd](lectures/10-control-variables/10-control-variables.Rmd))

- Exercise due before class: [Watch Regression and The Error Term](https://www.youtube.com/watch?v=0Aukw3CdB-Q) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/30)
- Class activity: [Control variables and omitted variable bias](https://github.com/big-data-and-economics/exercises/tree/main/13-control-variables)

### Week 9: Fixed Effects and Diff-in-diff

Tuesday (2025-03-04): Fixed Effects ([.html][11-fixed-effects.html], [.pdf][11-fixed-effects.pdf], [.Rmd](lectures/11-fixed-effects/11-fixed-effects.pdf))

- Exercise due before class: [Watch Fixed Effects](https://youtu.be/Z1QmFuPV9JA?si=CUXGCygsABmdWEhk) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/33)
- Class activity: [Fixed Effects and Panel Data](https://github.com/big-data-and-economics/exercises/tree/main/15-fixed-effects)

Thursday (2025-03-06): Difference-in-differences ([.html][11-diff-in-diff.html], [.pdf][11-diff-in-diff.pdf], [.Rmd](lectures/11-diff-in-diff/11-diff-in-diff.Rmd))

- Exercise due before class: [Watch Diff-in-diff lecture](https://www.youtube.com/watch?v=hu2nDbnpALA) and read [Baker's Diff-in-diff methodology](https://andrewcbaker.netlify.app/2019/09/25/difference-in-differences-methodology/) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/36)
- Class activity: [Difference-in-difference exercise](https://github.com/big-data-and-economics/exercises/tree/main/15-diff-in-diff)

### Week 10: Regression Discontinuity Design

Tuesday (2025-03-11):  Regression Discontinuity Design ([.html][12-regression-discontinuity.html], [.pdf][12-regression-discontinuity.pdf], [.Rmd](lectures/12-regression-discontinuity/12-regression-discontinuity.Rmd))

- Problem Set 3 due before class
- Problem Set 4 assigned
- Exercise due before class: [RDD lecture](https://www.youtube.com/watch?v=yo3axaZBm_g) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/39)
- Class activity: [RDD and class sizes](https://github.com/big-data-and-economics/exercises/tree/main/16-regression-discontinuity)

Thursday (2025-03-13): Catch-up, potentially power tests/experimental design

- Exercise due before class: [Watch Power and the Statistical Test](https://www.youtube.com/watch?v=kuQ5cjlCQ1Y) and respond to discussion questions in [Discussion post](https://github.com/orgs/big-data-and-economics/discussions/43)
- Class activity: [Power Analysis](https://github.com/big-data-and-economics/exercises/tree/main/17-power-analysis)

## Machine Learning

### Week 11: Hack-a-thon prep

Tuesday (2025-03-18): Catch-up, potentially rental assistance topic discussion

- Exercise due before class: Read the Direct Rental Assistance Pilot Document on [post](https://github.com/orgs/big-data-and-economics/discussions/46) and respond to questions
- Class activity: Meet with Travis Heynen, select hackathon groups, complete [hackathon prep questions](https://github.com/big-data-and-economics/exercises/blob/main/18-dra-hackathon-prep/dra-hackathon-prep.md)

Thursday (2025-03-20): Break

### Week 12:  Hackathon!

Tuesday (2025-03-25): Hackathon Kickoff and Catchup day
- Problem Set 4 due before class
- Complete hackathon prep questions

Thursday (2025-03-27): Hackathon presentations
- Problem Set 5 assigned

### Week 13: Introduction to Machine Learning

Tuesday (2025-04-01): Functions & Parallel Programming ([.html][13b-functions-parallel-programming.html], [.pdf][13b-functions-parallel-programming.pdf], [.Rmd](lectures/13b-functions-parallel/13b-functions-parallel-programming.Rmd))

- Exercise due before class: [Datacamp: Intermediate R][datacamp]
- Class activity: TK

Thursday (2025-04-03): Bootstrapping ([.html][13-bootstrapping.html], [.pdf][13-bootstrapping.pdf], [.Rmd](lectures/13-bootstrapping/13-bootstrapping.Rmd))

- Exercise due before class: [Read Brownstone & Valletta (2001)](https://www.aeaweb.org/articles?id=10.1257/jep.15.4.129) and give an intuitive use case for bootstrapping and multiple imputation (not the ones in the paper)
- Class activity: Bootstrapping practice ([.html][13a-bootstrapping-practice.html], [.pdf][13a-bootstrapping-practice.pdf], [.Rmd](lectures/13a-bootstrapping-practice/13a-bootstrapping-practice.Rmd))

### Week 14: Machine Learning

Tuesday (2025-04-08): Intro to Machine Learning ([.html][14-intro-to-ml.html], [.pdf][14-intro-to-ml.pdf], [.Rmd](lectures/14-intro-to-ml/14-intro-to-ml.Rmd))

- Exercise due before class: TK
- Class activity: ISLR tidymodels lab ([.html](https://emilhvitfeldt.github.io/ISLR-tidymodels-labs/05-resampling-methods.html))

Thursday (2025-04-10): Tree-based methods ([.html][15-regression-trees.html], [.pdf][15-regression-trees.pdf], [.Rmd](lectures/15-regression-trees/15-regression-trees.Rmd)) 

- Problem Set 5 due before class
- Exercise due before class: TK
- Class activity: TK

## If time

- Causal Forests ([.html][16-causal-forests.html], [.pdf][16-causal-forests.pdf], [.Rmd](lectures/16-causal-forests/17-causal-forests.Rmd))
- Regression regularization/penalization
- Regular expressions
- Topics Modeling, LLMs
- AI and bias

# Goals for this course

This class is about helping you build good habits for doing organized and reproducible empirical work. It is not about developing expertise in specific R packages or functions. To that end, you should work in groups, and expect to spend several coding sessions working through problems together. I expect you to be flexible with your coding and commit to learning how to solve your own problems. Moreover, once you figure out a solution, I expect you to comment and organize your code, so you can easily reproduce the fix later.^[This is a good habit to get into for your own work, but also for your future collaborators and employers.] 

- Organize empirical projects that are replicable, reproducible, and collaborative using good programming practices
- Collect and clean big or novel datasets using APIs, web scraping, and other methods
- Use Big Data to generate key insights about economic opportunity, inequality, and other social problems
- Understand the differences between prediction, causality, and description, and when to apply each
- Explain what data science is, and how Big Data differs from other types of data 

## Navigating the course

- All problem sets and lectures are linked above in the [calendar](#lectures)
- The repository for each problem set, these course materials, and your class presentations are all linked in the [organization page](https://github.com/orgs/big-data-and-economics/repositories)

## Expectations

This is an extremely challenging course. To help you succeed, I have outlined expectations for both you and me.

### For your professor

- Link to lecture slides and problem sets in the [calendar](#lectures)
- Post any software you need to download or other materials you need to prep for class in the [calendar](#lectures) with 24 hours notice
- Outline learning goals at the top of each lecture
- Clearly explain the expectations for each problem set
- Provide examples of skill sets to be used on problem sets in class
- Grade your problem sets within two weeks (i.e. before the next problem set is due)
    - Post all problem set solutions to the repository within a week of the problem set being due
- Check all GitHub `Issues` and Discussions tabs at least once per day to answer questions

### For students

- Check the [calendar](#lectures) within 24 hours of each lecture to see any materials you need to download/review
- Fork the main problem set repository within 48 hours of the problem set being posted
- Open problem set data and code within 48 hours of the problem set being posted
- Work on problem sets in groups, but turn in your own code (unless it is a group assignment)
- Post questions to [GitHub Discussions](https://github.com/orgs/big-data-and-economics/discussions) or page-specific `Issues` unless it is of a private matter (e.g. grades, extensions)
    - There is a GitHub `Issues` tab within every problem set that I create, please post questions about problem sets directly to the tab for each problem set
    - If I receive an email with a question that will benefit everyone, I will ask you to post it to GitHub Issues/Discussions
    - This is so that everyone can benefit from the answer
    - Also, it will encourage collaboration
- Use computers in class for class-related activities only
- Seek out solutions to coding problems you run into
    1. Read error messages and see if you can immediately solve the problem
    2. Think before going to Google/ChatGPT: "How would I read a small portion of a large dataset in R?" (Use this services proactively, not reactively)

### How I will run class

Most classes will (hopefully) be divided into a "lecture" and an "interactive" component. During the lecture, computers will be closed. During the interactive component, computers will be open for you to work through it. 

## Resources to use for class

This course is taught in R, but the goal is not for students to become experts in individual R functions and packages. That is something a person could do using generative AI, existing R vignettes and demos, and other online resources. 

Still, any programming language is tough to learn and R has a few quirks that make it challenging when you're coming from Stata. Those quirks are worth learning because they buy you a lot more functionality, but they can be frustrating. As shown in [Ten simple rules for teaching yourself R](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9436135/) (Lawlor et al. 2022), this is the nonlinear process of developing comfort in R:

![Taken from Lawlor et al. (2022) NIH.](img/r-challenges-lawlor-et-al-2022.jpg)

The important to remember is that the goal is not to get rid of errors! The goal is to get comfortable solving them and finding ways to avoid the same mistake in the future. As [XCKD's Randall Munroe](https://xkcd.com/627/) put it:

![Taken from XCKD](img/tech_support_cheat_sheet.png "Hey Megan, it's your father. How do I print out a flowchart?")

With that in mind, I expect students in this course to make ample use of the countless free resources on the internet to learn R. Here are a few that I recommend:

### Getting help with coding/programming

- [How to Ask for Programming Help](http://codingkilledthecat.wordpress.com/2012/06/26/how-to-ask-for-programming-help/)
- [Stack Exchange's](https://codereview.stackexchange.com/help/how-to-ask)
- [Matt Gemmell's 'What have you tried?'](http://mattgemmell.com/what-have-you-tried/)
- [How to Ask Question's the Smart Way](http://www.catb.org/~esr/faqs/smart-questions.html) by Eric Raymond and Rick Moen (you may need thick skin)

### On R

#### Videos
- [R crash course](https://www.youtube.com/watch?v=eR-XRSKsuR4)
- [Bates Alumni Eli Mokas and Ian Ramsay's RStudio Tutorial](https://www.youtube.com/watch?v=Ih84O1vfH8Y&t=3391s)

#### Demos

- [Dozens of free R Courses by Harvard](https://pll.harvard.edu/subject/r)
- [learnr package](https://rstudio.github.io/learnr/) developed by Garrick Aden-Buie, Barret Schloerke, JJ Allaire, and Alexander Rossell Hayes is a great way to Learn R by making interactive demos in RMarkdown
- [Awesome R Learning Resources](https://github.com/iamericfletcher/awesome-r-learning-resources) provides all kinds of resources and is maintained by Eric Fletcher
- [R Intro](https://rawgit.com/grantmcdermott/R-intro/master/rIntro.html) by Grant McDermott and Ed Rubins

#### Textbooks
- [_R_ For Data Science](https://r4ds.hadley.nz/) by Hadley Wickham and Garrett Grolemund
- [Advanced _R_](https://adv-r.hadley.nz/) by Hadley Wickham
- [Geocomputation with _R_ by Robin Lovelace](https://geocompr.robinlovelace.net/) by Jakub Nowosad, and Jannes Muenchow
- [R Programming for Data Science](https://bookdown.org/rdpeng/rprogdatascience/) by Roger D. Peng
- [The R Inferno](https://www.burns-stat.com/pages/Tutor/R_inferno.pdf)

#### Cheatsheets
- [_Posit_ Cheatsheets](https://rstudio.com/resources/cheatsheets/)
- [Ten Simple Rules for Teaching Yourself R](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9436135/) by Lawlor et al. (2022)

#### On R Markdown

- [_RStudio_ Gallery](https://rmarkdown.rstudio.com/gallery.html)
- [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) by Yihui Xie, J. J. Allaire, and Garrett Grolemund

### Econometrics, Statistics, Data Science with R examples

- [An Introduction to Statistical Learning](https://statlearning.com) by Gareth James, Daniela Witten, Trevor Hastie, and Robert Tibshirani
    - [ISLR Labs](https://emilhvitfeldt.github.io/ISLR-tidymodels-labs/)
- [Data Science for Economists and Other Animals](https://grantmcdermott.com/ds4e/) by Grant McDermott and Ed Rubin
- [Causal Inference: The Mixtape](https://mixtape.scunning.com/) by Scott Cunningham
- [The Effect](https://www.theeffectbook.net/) by Nick Huntington-Klein
- [Spatial Data Science](https://r-spatial.org/book/) by Edzer Pebesma and Roger Bivand
- [Data Visualization: A practical introduction](http://socviz.co/) by Kieran Healy 
- [Curated List by Nathan Tefft](https://docs.google.com/spreadsheets/d/1yLNdpb0TkYfNN-phme1Amt4XPU1bOB6vINHam1ss_fk/edit#gid=1544370596)
- [Library of Statistical Techniques (LOST)](https://lost-stats.github.io/)
- [Cheatsheet on scraping with R](https://github.com/yusuzech/r-web-scraping-cheat-sheet/blob/master/README.md)

### Staying organized

- [Code and Data for the Social Sciences: A Practitioner's Guide](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) by Matthew Gentzkow and Jesse Shapiro
- [Coding for Economists: A Language-Agnostic Guide](https://scholar.harvard.edu/sites/scholar.harvard.edu/files/ristovska/files/coding_for_econs_20190221.pdf)
- [happygitwithr](https://happygitwithr.com/) by Jenny Bryan

### Large Language Models

You are actively encouraged to use generative AI assistants in this class. These can be used to improve your code, refine your writing, iterate on your ideas, and more.

- [Sign-up for ChatGPT](https://chat.openai.com/auth/login)
- [Sign-up for GitHub CoPilot](https://docs.github.com/en/copilot/quickstart#signing-up-for-github-copilot-for-your-personal-account) (Note: you do not signup through this organization, you signup through your own personal GitHub account as a student.)
- [Tips to get better with ChatGPT](https://raw.githack.com/tyleransom/DScourseS23/master/LectureNotes/27-GPT/27slides.html#1)
- [Integration of AI with R](https://intro2r.library.duke.edu/ai.html)

### Student Academic Support Center
Scheduled hours for R held in the Student Academic Support Center (SASC) of the Library are:

- Sunday | 7:30-9pm
- Monday | 12-1pm, 2:30pm-4pm
- Tuesday |12-2:30pm, 6-7:30pm
- Wednesday | 11am-1pm, 6-7:30pm
- Thursday | 12-4pm, 6-7:30pm
- Friday | 11am-12pm

#### Course-Attached Tutor

Ethan Wu is our Course-Attached tutor. He will host office hours in the SASC and will be available for individual appointments. His hours are:

- **Evening Help Session:** Thursdays at 6:30pm in PGill 227
- **Regular Office Hours:** By appointment

He can help you troubleshoot *R*. He does not have solutions to the problem sets, but he can help you figure them out. 

### Tips for using generative AI

- Think of it as a more interactive version of Googling for the solution to a bug
  - It is not a replacement for you, the programmer
  - Think through the basic coding tasks first, then ask AI to fill in the blanks

- Be as specific as possible in your instructions
  - If you know the name of the variables in your dataset, use them

- Think of it as a more interactive version of Googling for the solution to a bug

- Try things iteratively and in small steps
  - If you're not sure how to do something, try to break it down into smaller steps
  - This is a good tip for coding in general

- Your brain is still the most powerful tool you have
  - ChatGPT is a tool to help you, not replace you
  - You will not get much mileage if you say, "Read in the gapminder dataset and do something interesting with it"

- Often it only provides "skeleton code", so you'll need to fill in the blanks
- 
# Other details

This is an undergraduate course taught by [Kyle Coombs](https://kylecoombs.com/). Here is the course description, right out of the [syllabus](syllabus/syllabus.md):

> Economics is at the forefront of developing statistical methods for analyzing data collected from uncontrolled sources. Since econometrics addresses challenges in estimation such as sample selection bias and treatment effects identification, the discipline is well-suited for the analysis of large and unsystematically collected datasets. This course introduces statistical (machine) learning methods, which have been developed for analyzing such datasets but which have only recently been implemented in economic research. We will cover a variety of topics including data collection, data management, data description, causal inference, and data visualization.  The course also explores how econometrics and statistical learning methods cross-fertilize and can be used to advance knowledge in the numerous domains where large volumes of data are rapidly accumulating. We will also cover the ethics of data collection and analysis. The course will be taught in *R*. 

## Grading policy

| Component                                 | Weight | Graded |
|-------------------------------------------|--------|--------|
| 4-5 × problem sets                        | 30%    | Top 3-4 (drop one)  |
| 1 × presentation                          | 15%    | Top 1   |
| N x In-class exercises                    | 10%    | Completion, drop two lowest |
| N x Out-of-class exercises                | 15%    | Completion, two drops |
| 1 × Final Project                         | 25%    | Hackathon rubric |
| 1 × GitHub participation                  | 5%     | Overall   |
| Classroom participation                   | Bonus up to 2.5%    | Discretion  |
| Open source material contribution         | Bonus up to 2.5%    | Provide evidence  |
| Research seminar bonuses                  | Problem set bonus | 2 points |

Finalized grades on each component will be posted to Lyceum. Where possible to give feedback privately, it will be posted to GitHub. '

### Exercises

There are two types of exercises in this course: in-class exercises and Datacamp exercises.

#### In-class exercises

These exercises are short coding assignments that you will start in class. They are designed to help you practice the skills we are learning in class and are due by the next class.

Exercises will be graded on a 0, 1, 2 scale. A 0 means you did not turn in the assignment. A 1 means you turned in the assignment, but put in minimal effort. A 2 means you turned in the assignment with clear effort. 

I will drop the lowest two in-class exercise grades. 

#### Out-of-class exercises

During the semester, I will use a variety of tools to get you (1) practicing R and Git skills outside of class and (2) thinking about the value of different data science skills ahead of the relevant class period. These will include short readings, datacamp assignments, and 

I will allow you to makeup two Datacamp tutorials if you do not complete them on time.

### Problem sets

Throughout the course you will engage in problem sets that deal with actual data. These may seem out of step with what we do in class, but they are designed to get you to think about how to apply the tools we learn in class to real data. 

- Problem sets are coding assignments that get you to play with data using R
- Some problem sets will be group assignments, some will be individual
- They are extremely challenging, but also extremely rewarding
- With rare exceptions: You will not be given code to copy and paste to accomplish these data cleaning tasks, but instead given a set of instructions and asked to figure out how to write code yourself
- You are actively encouraged to collaborate with your classmates even if the assignment is not a group assignment
- All problem sets will be completed and turned in as GitHub repositories
- I will drop the lowest problem set grade

I reserve the right to add a problem set if I feel it will aid your learning.

#### What you will turn in:

_Unless otherwise indicated on the problem set, this is what you will turn in._

- Each problem set will be posted as a GitHub repository, which you will fork, set to private, and then clone to your computer (instructions provided in each problem set)
- You will then work on the problem set on your computer or a Codespaces server, and push your code to GitHub (push often!) (**Note: You have to push in Codespaces. If you delete your Codespace without pushing changes, you will lose your answers.**)
- For each problem set, you will turn in modular code (i.e. separate files do separate things) that accomplishes the tasks outlined in the problem set
- You will also turn in a `.Rmd` file that contains your answers to the questions in the problem set along with a knitted `.html` or `.pdf` of your `.Rmd`
    - This `.Rmd` will "source" the code you wrote, so I can easily run your code from start to finish by `knitting`
- Your problem sets will have a sensible folder structure that is easy to navigate (name folders `code`, `data`, `output`, etc.)
- You will turn in your problem sets by pushing your code to GitHub. 

**Grading**

Your problem sets are (generally) graded on four criteria: 

1. Submission via GitHub (10%): Did you use GitHub to stage, commit, and push your code? Did you submit the assignment on time? Did you submit the assignment in the correct format?   
    - If you are unable to submit via GitHub pushing/pulling, you can create a zip folder of your problem set and upload it as a single file to your repository.
    - Zip instructions: https://www.wikihow.com/Make-a-Zip-File
    - Click `Add file` in your repository to upload the zip file. 
    - You will forgo this 10% of your grade. 
2. Quality of code (30%): Is it well-commented? Is it easy to follow? Can I run it?
    - Any scripts needed to run your code should be included in the repository and sourced in the `.Rmd` file
    - Write code that automates as much of the process as possible. For example, if you need to download a file, write code that downloads the file automation
    - If you cannot figure out how to automate a step, you can write a comment explaining what I need to do to run your code (you will lose very few points)
3. Quality of presentation of graphs and tables (30%): Are they well-labeled? Do they have titles? Do they have legends? Are they formatted well?
4. Quality of answers (30%): Are they clear? Do they answer the question?

I will provide feedback and a grade in a `feedback` branch of your problem set repository. That will let me add feedback without overwriting your work in the `main` branch. 

#### Group assignments

On group assignments, I expect everyone to collaborate. Your group will receive one grade. Part of the course is about learning to collaborate on open-ended challenging problems. This sets you up to effectively tackle the hackathon efficiently at the end of the semester.

If there has been a clear disparity in effort as made clear by the repository commit history, I will reach out to the group members to clarify whether the disparity is due to working together in person or if there was a meaningful difference in contributions. If I deem there has been a meaningful difference in contributions, only the group members who actively participated will be eligible for resubmission and gaining points back as detailed below. 

If I get sufficient evidence that a group member did not contribute to any portion of the problem set, that group member will receive a zero.

#### Solutions 

The solutions are made public within a week of the problem set being posted.

#### Improving your grade

In an effort to incentivize you to see coding as an ongoing process of learning and improvement, I will allow you to improve the coding and presentation quality portions of your grade on any problem set. However, you cannot just copy and paste the solutions. 

Instead, you must provide carefully commented explanations of each step of the code. This is a great way to learn, but it is also a lot of work. 

*Example.* You might write add a comment like this to the top of your code:

```r
# Create directories, suppress warning that the directory already exists. 
suppressWarnings({
    dir.create(data)
    dir.create(documentation)
    dir.create(code)
    dir.create(output)
    dir.create(writing)
})
```

##### Resubmission process

To be eligible to resubmit to improve your grade, you must have submitted an initial version of the problem set on time.

1. View my feedback on the `feedback` branch of your problem set repository. 
2. Fix your problem set answers and comment your code as needed to explain the change. Write "# CORRECTED" in all caps next to any changes (commented out)
3. You will only receive points back on coding/figures portions of the problem set that you tried in your first submission.
4. Make sure your problem set knits from raw data to final answers without any errors as do my solutions. 
5. Push changes to the `main` branch of your problem set repository.
6. Navigate to the `Issues` tab of your problem set repository and create a new issue titled "Resubmission for Problem Set X". Briefly describe your changes in the body of the issue and tag my username, @kgcsport. 
7. **Deadline for resubmissions**: All resubmissions must be pushed within one week of the solutions being posted.

Within your own private problem set repository, you can create an `Issues` tab within the Settings tab for interfacing only with me and any group partners.

On group assignments, only students that actively participated will be eligible for resubmission and gaining points back. 

##### Requests for reconsideration

On occasions, you may disagree with the grade you received on a problem set. Here are my policies for reconsideration:

- **Deadline for requests**: All requests for reconsideration must be submitted within one week of the solutions being posted.
- **Full regrade**: Any request for reconsideration will result in a full regrade of your problem set. This means that your grade can go up or down.
- **Regrading high scores**: If you scored a 90 percent or above on a problem set, I will not change your grade. This is not because I do not want to help you, but because we both have limited time and I want to focus my efforts on cases where an incorrectly graded problem set could significantly impact your grade in the course. **This does not apply to re-submissions. This only applies to the cases where you want me to review your score in full separate from corrections and re-submissions.**

If you would like reconsideration, please raise an `Issue` in your private problem set repository. Title the issue "Reconsideration request for Problem Set X". Briefly describe your request in the body of the issue and tag my username, @kgcsport. 

Within your own private problem set repository, you can create an `Issues` tab within the Settings tab for interfacing only with me and any group partners.

#### If you ask for a regrade, you forgo the opportunity to resubmit and improve your grade. 

### Presentations

Each of you will give a 10-minute presentation of either an MRE of a coding struggle you are having or on a coding skill.

Please sign up [here](https://github.com/big-data-and-economics/presentations-winter2025) at the start of the semester. 

### Final Project

You will write a final project over the course of the semester as part of a group. It is likely that the final project will be a hack-a-thon in collaboration with the city of Lewiston detailed below.

#### Lewiston Hack-a-thon

This semester, we will be working with the City of Lewiston to help them solve a problem using data. Specifically, we will help the city understand how to use existing administrative data to complement, and at times substitute, for survey data. 

We will specifically be engaging in a Hack-a-thon. A hack-a-thon is a short (often 24 hours), intense period of collaboration between a group of people to solve a problem. Scheduling is still in the works.

The Hack-a-thon is mandatory.

#### Data Requests

Several weeks before the hack-a-thon, we will brainstorm datasets that your group would like the City of Lewiston to provide for you. You will then write a short report on how you would use those datasets to solve a problem. 

#### What you will do

- Compete in groups of 3-5 to each propose solutions to the same problem
- Present your solution to a group from the City of Lewiston
- Write a short report on your solution
- Maintain all code and necessary documentation to the City of Lewiston in a GitHub repository
- Provide any additional documentation the City of Lewiston requests

Your solution may include a variety of things, including:

- A data visualization
- Suggestions of new databases to maintain
- Examples from similar cities that have tackled these problems

#### Back up

In the event that the Hack-a-thon does not occur, the final project will be a replication project with an extension of the results. You will evaluate (1) the extent that you could replicate the results and (2) the quality of the replication package provided. You will turn in a short paper explaining what you did, a replication package, and a presentation of your extension results. 

### GitHub participation

Participation on GitHub is 5 percent of your grade. Please use [GitHub Discussions](https://github.com/orgs/big-data-and-economics/discussions) and `Issues` to ask questions about the course materials and problem sets. You can also suggest improvements to the course materials. Here are the guidelines:

- When starting a discussion, posting an issue, or suggesting a pull request, please use a clear title (e.g. Problem Set 1: Question about Question 2) and description ("What does term X mean?")

- If posting about an error you are encountering, follow these steps:
    - Briefly state the expected behavior
    - Write the minimal code needed to reproduce the error (a minimally reproducible example)
    - Write the full error message you are receiving
    - Write the steps you have taken to troubleshoot the error

- If posting a clarifying question about someone's post, follow these steps:
    - Briefly clarify what you are confused about
    - Suggest potential interpretations of the post

- If posting about a suggestion to improve the class materials, follow these steps:
    - Briefly state the improvement you are suggesting
    - Write the steps you have taken to troubleshoot the error
    - If you are suggesting a change to the course materials, please fork the repository, make the change, and submit a pull request

- Be kind to one another. Coding is hard. We are all learning. 

This policy guidelines are taken from stackoverflow.com. You can read more about how to ask a good question [here](https://stackoverflow.com/help/how-to-ask) and how to answer a question [here](https://stackoverflow.com/help/how-to-answer#:~:text=Read%20the%20question%20carefully&text=Make%20sure%20your%20answer%20provides,going%20in%20the%20right%20direction.).

I will rate participation based on the following criteria:

- Are you posting thoughtful questions? Follow the guidelines on [stackoverflow](https://stackoverflow.com/help/how-to-ask) for posting a good question. 
- Are you replying to questions? Follow the guidelines on [stackoverflow](https://stackoverflow.com/help/how-to-answer#:~:text=Read%20the%20question%20carefully&text=Make%20sure%20your%20answer%20provides,going%20in%20the%20right%20direction.) to write a good answer.
- Do you pull request improvements to the course materials? This can be a typo fix, a bug fix, or a new feature.

**Note**: I hope to add [Issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates) across the entire organization. All in good time. 

For each problem set, use the `Issues` tab for that specific problem set. For course materials, please use the organization [Discussions](https://github.com/orgs/big-data-and-economics/discussions) tab. 

I will be monitoring the GitHub `Issues` tab for each repository and will participation points to those who are actively engaging per the guidelines from stackoverflow. To receive full credit, you must be asking thoughtful questions and thoughtfully answering each other's questions. Thoughtful questions come after you've spent some time re-reading your code, Googling, and working with ChatGPT to try to solve the problem yourself first. Thoughtful answers may not solve the problem, but they should be clear, concise, good faith efforts to help. You will receive a lower participation grade if you do not follow the posting guidelines. 

The goal is to encourage you to work together to solve problems. This is one of the most important skills you can take away from this, and really any, course. I also want to incentivize you to think carefully about how you post. Be kind and respectful, as much as you endeavor to be clear, concise, and helpful.

Furthermore, I want you to take ownership over your learning. You get more out of a course when you are actively engaged in the material. Actively engaging on this repository and suggesting changes to the course materials is a very tactile way to do that. 

### Bonus points:

There are several opportunities for bonus points during the semester:

1. A 2.5% bonus on your final grade for issuing a *pull request* to any open source material. This can be to fix a typo or to fix a bug in the code.
2. A 2.5% participation bonus on your final grade that I will award at my discretion.
3. I offer a problem set bonus point for each typo corrected on problem sets *and* solutions. This is capped at 10 points per student per problem set. You must pull request and/or raise an Issue on the corresponding GitHub repository to get credit.
4. I offer a make-up of an out-of-class or in-class exercise for attending an economics research seminar and writing a short summary in the GitHub discussions page.

I have given instructions on how to execute a pull request of a *specific* commit (instead of your entire commit history) in the [FAQ](#pull-request-of-a-specific-commit).

### Extensions

I offer extensions for two things:

1. Major health issues
2. Major family emergencies

Please flag with Bates Reach and email me with the subject "[ECON 368] _subject here_", so I can be aware of the situation. Together we'll figure out an appropriate extension.

#### Group assignments

If you are asking for an extension on a group assignment include all group partners on the email. Do not email me individually and ask for an extension on behalf of your group. This practice will ensure that all group members are aware of the request. 

## GitHub Codespaces

Having trouble with R on your computer? 

### Do _NOT_ use a school computer as these do not have Git or GitHub integrated. 

To get you up and running and writing R code in no time, I have containerized this workshop such that you have a ready out of the box R coding environment.

For some problem sets, I will explicitly request that you work with GitHub Codespaces to minimize the amount of time you spend troubleshooting your local R installation and package versions. No more, "but it works on my computer" when I ask you why your code isn't running! On occasion, I may ask you to work on your own computer because I want you to learn how to troubleshoot on your own machine. 

#### Dev Containers in GitHub Codespaces

Click the green "<> Code" button at the top right on this repository page, and then select "Create codespace on main". (GitHub Codespaces is available with [GitHub Enterprise](https://github.com/enterprise) and [GitHub Education](https://education.github.com/).)

To open RStudio Server, click the Forwarded Ports "Radio" icon at the bottom of the VS Code Online window.

![Forwarded Ports](img/forwarded_ports.png)

In the Ports tab, click the Open in Browser "World" icon that appears when you hover in the "Local Address" column for the Rstudio row.

![Ports](img/ports.png)

This will launch RStudio Server in a new window. Log in with the username: `rstudio` and password: `rstudio`. 

* NOTE: Sometimes, the RStudio window may fail to open with a timeout error. If this happens, try again, or restart the Codepace.

In RStudio, use the File menu to open the file `test.Rmd`. Use the "Knit" submenu to "Knit as HTML" and view the rendered "R Notebook" Markdown document.

* Note: You may be prompted to install an updated version of the `markdown` package. Select "Yes".

* Note: Pushing/pulling will work a bit differently. In practice, you will use the <picture> <source media="(prefers-color-scheme: light)" srcset="/img/298785_git_branch_icon.png"> <source media="(prefers-color-scheme: dark)" srcset="/img/298785_git_branch_icon_white.png"> <img alt="Text changing depending on mode. Light: 'So light!' Dark: 'So dark!'" src="/img/298785_git_branch_icon_white.png"></picture> icon for "Source Control" on the RHS bar where you can stage things, commit, and push them. You will need to do this to turn in your problem set. See documentation from GitHub on [Source Control and Codespaces](https://docs.github.com/en/Codespaces/developing-in-Codespaces/using-source-control-in-your-codespace)

# FAQ

## How is this all structured? What's a repository? What's an organization? 

This course is hosted in a GitHub Organization. An organization is a collection of repositories. A repository contains the full history of "commits" of a coding project, all its folders, etc. 

Organizations are incredibly useful because all the repositories within an organization are linked. This means that you can easily navigate between them. For example, you can click on the "big-data-and-economics" to get to the organization page and navigate over to other repositories under the `Repositories` tab.

## What is a commit? 

We'll go over this in more detail in later lectures, but a commit is a collection of changes made to the code that you intentionally bundle together and can label. You can think of it like saving a file under a separate file name. The difference is you don't create multiple copies of the file, but you can revert to earlier versions easily using your repository. 

## If you find a typo in these lecture notes

Please raise an issue or submit a pull request. For those taking this course, I offer a 2.5% bonus on your final grade for issuing a *pull request* to any open source material -- including these lecture notes. This can be to fix a typo or to fix a bug in the code. 

## How do I download this material and keep up to date with any changes?

Please note that this is a work in progress, with new material being added every week. 

If you just want to read the lecture slides or HTML notebooks in your browser, then you should simply scroll up to the [Lectures](#lectures) section at the top of this page. Completed lectures will be hyperlinked as soon as they have been added. Remember to check back in regularly to get any updates. Or, you can watch or star the repo to get notified automatically.

If you actually want to run the analysis and code on your own system (highly recommended), then you will need to download the material to your local machine. The best way to do this is to clone the repo via Git and then pull regularly to get updates. Please take a look at [these slides](https://raw.githack.com/uo-ec607/lectures/main/02-git/02-git.html) if you are unfamiliar with Git or are unsure how to do any of that. Once that's done, you will find each lecture contained in a numbered folder (e.g. `01-intro`). The lectures themselves are written in R Markdown and then exported to HMTL format. Click on the HTML files if you just want to view the slides or notebooks.

## I've spotted a mistake or would like to contribute

Please [open a new issue](https://help.github.com/articles/creating-an-issue/). Better yet, please fork the repo and [submit an upstream pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/). I'm very grateful for any contributions, but may be slow to respond while this course is still be developed. Similarly, I am unlikely to help with software troubleshooting or conceptual difficulties for non-enrolled students. Others may feel free to jump in, though.

## Can I use/adapt your material for a similar course that I'm teaching?

Sure. I already borrowed half of it [Grant McDermott](https://grantmcdermott.com/), [Tyler Ransom](https://tyleransom.github.io/), [Raj Chetty](https://rajchetty.com/), and [Stephen Hansen](https://sekhansen.github.io/). I have also kept everything publicly available. I ask two favours (like Grant McDermott) 1) Please let me know ([email](mailto:kcoombs@bates.edu) if you do use material from this course, or have found it useful in other ways. 2) An acknowledgment somewhere in your own syllabus or notes would be much appreciated.

## Pull Request of a Specific Commit

If you want to make a pull request of a specific commit (and not all changes you have made), you are best off using the command line interface for Git. There are two ways to do this thanks to a recent innovation by GitHub. The first, more traditional approach, involves something called [cherry picking](https://stackoverflow.com/questions/66639992/git-create-branch-that-is-equal-to-master-of-fork-parent). 

You'll need to do something called [cherry picking](https://stackoverflow.com/questions/66639992/git-create-branch-that-is-equal-to-master-of-fork-parent). Here's how you do it:

**Use the command line (Git Bash, WSL, Terminal)**

1. Create a fork of this repository (called the upstream repository) if you have not before
2. Clone the forked repo to your local computer
3. Add the original repo as a remote called `upstream` (enter `git remote add upstream <upstream-repo-url>`)
4. Fetch the upstream repo (`git fetch upstream`)
5. Create a branch of this upstream repo (`git checkout -b <pull-request-branch-name> upstream/main`)
6. Either:
    - Make the changes you want to make
    - Cherry pick the specific commit you want to merge as a pull request by typing `git cherry pick <commit-hash>` into the command line
        - A commit hash is a unique combination of letters and numbers that identifies a specific commit. You can find the commit hash by running `git log` and copying the hash of the commit you want to make a pull request for OR by clicking on the commit history on GitHub and copying the SHA (the icon with two interlocked squares.)
7. Push this branch to the forked repository with `git push -u origin <pull-request-branch-name>`
8. Return to your forked repo's main branch with `git checkout -b origin/main`
9. Navigate to your forked repository on GitHub and create a pull request from the branch you just pushed (you should see a banner that says "Compare & pull request" when you navigate to your forked repo)
10. Make sure: 
    - The **base repository** is the upstream repo and the base is the main branch
    - The **head repository** is your forked repo and the compare is the the branch named `<pull-request-branch-name>`
11. *Optional after pull request is accepted*: Destroy the pull-request-branch once it has served its purpose with `git branch -d <pull-request-branch-name>`

The second, more recent approach, involves using the GitHub Desktop interface to create a new branch that is directly aligned with the top branch. This involves some setup, but is a bit more user-friendly (i.e. point-and-click based). This assumes you are working with a clone of an existing, forked repository. 

**Use GitHub Desktop**

1. Open GitHub Desktop.
2. Navigate to your repository under the `Current Repository` tab. If you don't see it, you may need to `Add > Add to existing repository` (navigate to the repositories local path on your computer, so GitHub Desktop knows where to look.)
3. Click on the dropdown menu `Repository` and select `Repository settings`. 
4. Click on `Fork behavior` and select "To contribute to the parent repository" under "I'll be using this fork..." (This will mean all new branches are aligned with the upstream "parent fork" repository.)
5. Click `Save` and move on.
6. Create a new branch by clicking on the `Current Branch` tab and selecting `New Branch`.
7. Name the branch something that is descriptive of the changes you are making, i.e. `<pull-request-branch-name>`
8. Navigate to the `Branch` tab and select the new branch you just created
9. Publish the branch to your forked repository by clicking `Publish branch` in the bottom right corner.
10. Make the changes you want to make in the repository. 
11. Commit the changes to the branch by clicking `Commit to <pull-request-branch-name>` in the bottom left corner in GitHub Desktop. (Or use RStudio, etc.)
12. Push the changes to the branch by clicking `Push origin` in the bottom left corner in GitHub Desktop.
13. Navigate to your forked repository on GitHub and create a pull request from the branch you just pushed (you should see a banner that says "Compare & pull request" when you navigate to your forked repo)
14. Make sure: 
    - The **base repository** is the upstream repo and the base is the main branch
    - The **head repository** is your forked repo and the compare is the the branch named `<pull-request-branch-name>`
15. *Optional after pull request is accepted*: Destroy the pull request branch by navigating to the `Branch` tab in GitHub Desktop and selecting `Delete <pull-request-branch-name>`. Select `Yes, delete this branch on the remote` as well to fully kill this branch. 

## Setup

This organization is used to run the ECON/DCS 368 course at Bates College, commonly known as Data Science for Economists or Big Data and Economics. This readme documents how to interact with this organization as a student in the course or instructor looking to mimic it.

### Students

Students should await an initial invitation via a Github Classrooms Assignment. This will allow you to enroll as a member of the organization. 

#### End of course

About a month after the course is over, students will be moved from Members to Outside Collaborators. This will allow any students to maintain access to private course materials while losing access to (and deleting) any of their problem set repositories that are hosted within the organization. Students will keep local versions of their solutions on their machines and can create new repositories accordingly.

### Professors

Use an organization like this to invite students to use Github Classroom. I am continuously improving how I leverage GH Classroom, which is itself under constant development. I largely use GH Classroom to automate organization enrollment and access to repositories (much faster than adding each name multiple times and managing repository access one-by-one.)

After creating your organization:

1. Create a classroom with GH classroom within said organization. Add your students one-by-one (just once!) or link to your institution's learning management software.
2. Create an initial problem set assignment through GH classroom that you want to send out to students. Send the link to students so they enroll. **Optional**: Make it a group assignment to create a group that all students are in, which can be used to give access to repositories during the course.
3. **Optional**: Make problem set repositories within the organization and ask students to fork their own repositories instead of using the GH Classroom links -- that way the students host the forks on their own repositories.
4. Once students have submitted all work and the class is over, you have two options: (1) archive the classroom and convert them to Outside Collaborators to maintain their access to materials or (2) delete the classroom entirely. Either way they will keep local clones of repositories, but this changes their access to forked repositories/class materials after the course concludes. 


## License

The material in this repository is made available under the [MIT license](http://opensource.org/licenses/mit-license.php). 

[01-Intro.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/01-intro/01-Intro.html
[01-Intro.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/01-intro/01-Intro.pdf
[02-Git.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/02-git/02-Git.html#1
[02-Git.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/02-git/02-Git.pdf
[02-empirical-workflow.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/02-empirical-workflow/02-empirical-workflow.html
[02-empirical-workflow.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/02-empirical-workflow/02-empirical-workflow.pdf
[03-data-tips.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/03-data-tips/03-data-tips.html
[03-data-tips.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/03-data-tips/03-data-tips.pdf
[04-rlang.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/04-rlang/04-rlang.html
[04-rlang.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/04-rlang/04-rlang.pdf
[05-tidyverse.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/05-tidyverse/05-tidyverse.html
[05-tidyverse.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/05-tidyverse/05-tidyverse.pdf
[06a-scraping-in-research.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/06a-scraping-in-research/06a-scraping-in-research.html
[06a-scraping-in-research.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/06a-scraping-in-research/06a-scraping-in-research.pdf
[06-web-css.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/06-web-css/06-web-css.html
[06-web-css.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/06-web-css/06-web-css.pdf
[07-web-apis.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/07-web-apis/07-web-apis.html
[07-web-apis.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/07-web-apis/07-web-apis.pdf
[08-spatial.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/08-spatial/08-spatial.html#1
[08-spatial.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/08-spatial/08-spatial.pdf
[09-oppatlas.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/09-oppatlas/09-oppatlas.html
[09-oppatlas.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/09-oppatlas/09-oppatlas.pdf
[10a-causal-inference.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/10a-causal-inference/10a-causal-inference.html
[10a-causal-inference.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/10a-causal-inference/10a-causal-inference.pdf
[10-regression.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/10-regression/10-regression.html
[10-regression.pdf]:  https://big-data-and-economics.github.io/big-data-class-materials/lectures/10-regression/10-regression.pdf
[10-control-variables.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/10-control-variables/10-control-variables.html
[10-control-variables.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/10-control-variables/10-control-variables.pdf
[11-fixed-effects.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11-fixed-effects/11-fixed-effects.html
[11-fixed-effects.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11-fixed-effects/11-fixed-effects.pdf
[11a-panel-twfe.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11a-panel-twfe/11a-panel-twfe.html
[11a-panel-twfe.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11a-panel-twfe/11a-panel-twfe.pdf
[11-diff-in-diff.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11-diff-in-diff/11-diff-in-diff.html
[11-diff-in-diff.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/11-diff-in-diff/11-diff-in-diff.pdf
[12-regression-discontinuity.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/12-regression-discontinuity/12-regression-discontinuity.html
[12-regression-discontinuity.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/12-regression-discontinuity/12-regression-discontinuity.pdf
[12a-rdd-class-sizes.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/12a-rdd-class-sizes/12a-rdd-class-sizes.html
[12a-rdd-class-sizes.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/12a-rdd-class-sizes/12a-rdd-class-sizes.pdf
[13-bootstrapping.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13-bootstrapping/13-bootstrapping.html
[13-bootstrapping.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13-bootstrapping/13-bootstrapping.pdf
[13b-functions-parallel-programming.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13b-functions-parallel/13b-functions-parallel-programming.html
[13b-functions-parallel-programming.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13b-functions-parallel/13b-functions-parallel-programming.pdf
[13a-bootstrapping-practice.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13a-bootstrapping-practice/13a-bootstrapping-practice.html
[13a-bootstrapping-practice.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/13a-bootstrapping-practice/13a-bootstrapping-practice.pdf
[14-intro-to-ml.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/14-intro-to-ml/14-intro-to-ml.html
[14-intro-to-ml.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/14-intro-to-ml/14-intro-to-ml.pdf
[15-regression-trees.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/15-regression-trees/15-regression-trees.html
[15-regression-trees.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/15-regression-trees/15-regression-trees.pdf
[16-causal-forests.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/16-causal-forests/16-causal-forests.html
[16-causal-forests.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/16-causal-forests/16-causal-forests.pdf
[17-lasso.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/17-lasso/17-lasso.html
[17-lasso.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/17-lasso/17-lasso.pdf
[17a-lasso-application.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/17a-lasso-application/17a-lasso-application.html
[17a-lasso-application.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/17a-lasso-application/17a-lasso-application.pdf
[18-regex-wordclouds.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/18-regex-wordclouds/18-regex-wordclouds.html
[18-regex-wordclouds.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/18-regex-wordclouds/18-regex-wordclouds.pdf
[18a-tidytext-activity.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/18a-tidytext-activity/18a-tidytext-activity.html
[18a-tidytext-activity.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/18a-tidytext-activity/18a-tidytext-activity.pdf
[19-analysis-of-language.html]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/19-analysis-of-language/19-analysis-of-language.html
[19-analysis-of-language.pdf]: https://big-data-and-economics.github.io/big-data-class-materials/lectures/19-analysis-of-language/19-analysis-of-language.pdf
[datacamp]: https://app.datacamp.com/groups/data-science-for-economists-winter-2025/assignments