# Class Materials for Bates ECON/DCS 368: Big Data and Economics

[Full syllabus](https://github.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/blob/main/syllabus/syllabus.pdf)

[`Lectures`](#lectures) | [`Details`](#details) |
[`FAQ`](#faq) | [`License`](#license)

# Feedback

I am constantly trying to improve this course. Provide [feedback](https://docs.google.com/forms/d/e/1FAIpQLScZyphM1fwb6GBH7HtGx4H_hwW6sGGVfZ3MXFnFLNlawQoOsQ/viewform?usp=sf_link).

# Office hours:
My office hours are: 
- Tuesdays 4pm-5pm
- Wednesdays 10:30-11:30am

You can book time [here](https://calendar.google.com/calendar/u/0/appointments/schedules/AcZssZ02UMZxGreYvp2MnVl5VkXrIQNOXpFuu6vOI-loXJZIJE141Ml4Qh05FCPbw73kVLUjSFCRhM61).

# Lectures 

*Note: While I have provided PDF versions of the lectures (in folders above), they are best viewed 
in the original HTML format.*

The course is broken up into three rough sections. 

- Part 1 covers basics of empirical organization, data gathering, and organizing that are not "big data" specific
- Part 2 covers data description, econometrics, and causal inference that are possible with big data
- Part 3 covers machine learning techniques that are possible with big data

Parts 2 and 3 will highlight examples of using big data to address social problems.

This is in progress and subject to change.

| Date | Day | Topic | Do before class | Due | 
|------|-----|-------|----------|-----|
| **Data Science Basics** | | |
| 2023-09-07  | Th | Introduction to Big Data ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/01-intro/01-Intro.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/01-intro/01-Intro.pdf), [.Rmd](lectures/01-intro/01-Intro.Rmd)) | [Read and Install Ch 1, 4-8 of happygitwihtr](https://happygitwithr.com/) | [Problem Set 1 due 9/25](https://classroom.github.com/a/sNsM0r0T), [solutions](https://github.com/ECON368-fall2023-big-data-and-economics/ps1-selective-colleges-solutions) |
| 2023-09-12  | T | Git slides ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/02-git/02-Git.html#1), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/02-git/02-Git.pdf), [.Rmd](lectures/02-git/02-Git.Rmd)) | [Work through Ch 9-19 of happygitwithr](https://happygitwithr.com/connect-intro) | |
| 2023-09-21  | Th | Empirical Organization slides ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/02-empirical-workflow/02-empirical-workflow.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/02-empirical-workflow/02-empirical-workflow.pdf), [.Rmd](lectures/02-empirical-workflow/02-empirical-workflow.Rmd)), Data Tips ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/03-data-tips/03-data-tips.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/03-data-tips/03-data-tips.pdf), [.Rmd](lectures/03-data-tips/03-data-tips.Rmd)) | [Read Code and Data for Social Sciences](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) | |
| 2023-09-26 | T | R Basics ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/04-rlang/04-rlang.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/04-rlang/04-rlang.pdf), [.Rmd](lectures/04-rlang/04-rlang.Rmd)) | [Watch basics of RStudio by Bates alumni Eli Mokas and Ian Ramsay](https://www.youtube.com/watch?v=Ih84O1vfH8Y&t=3391s) | |
| 2023-09-28 | Th | Data Table ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-datatable/05-datatable.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-datatable/05-datatable.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-datatable/05-datatable.pdf)) Tidyverse ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-tidyverse/05-tidyverse.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-tidyverse/05-tidyverse.pdf), [.Rmd](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/05-tidyverse/05-tidyverse.Rmd)) | [Ch 1 DS4E](https://grantmcdermott.com/ds4e/tidyverse.html) | |
| 2023-10-03 | T | CSS ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/06-web-css/06-web-css.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/06-web-css/06-web-css.pdf), [.Rmd](lectures/06-web-css/06-web-css.Rmd)), [Scraping Notes by Jesus Fernández Villaverde and Pablo Guerrón](https://www.sas.upenn.edu/~jesusfv/Lecture_HPC_10_Web_Scrapping.pdf) | [SelectorGadget](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb) (Chrome), [ScrapeMate](https://addons.mozilla.org/en-US/firefox/addon/scrapemate/) (Firefox) | [Problem Set 2 due 10/09 at 11:59:59](https://github.com/ECON368-fall2023-big-data-and-economics/PS2-manager-survey), [Solutions](https://github.com/ECON368-fall2023-big-data-and-economics/PS2-manager-survey) |
| 2023-10-05 | Th | APIs ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/07-web-apis/07-web-apis.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/07-web-apis/07-web-apis.pdf), [.Rmd](lectures/07-web-apis/07-web-apis.Rmd)) | [JSONView](https://jsonview.com/), [Sign-up](https://research.stlouisfed.org/useraccount/apikey) and register for [Personal API Key](https://research.stlouisfed.org/useraccount/apikey) | |
| **Causal Inference** | | |
| 2023-10-10 | T | Opportunity Atlas ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/09-oppatlas/09-oppatlas.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/09-oppatlas/09-oppatlas.pdf), [.Rmd](lectures/09-oppatlas/09-oppatlas.Rmd)) and Spatial Analysis ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/08-spatial/08-spatial.html#1), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/08-spatial/08-spatial.pdf), [.Rmd](lectures/08-spatial/08-spatial.Rmd)) | [Watch Geography of Upward Mobility in America starting at 39min](https://www.youtube.com/watch?v=P0NvsWDKwvs&t=2340s) | [Problem Set 3 due 10/30 at 11:59:59 (optional)](https://github.com/ECON368-fall2023-big-data-and-economics/ps3-opportunity-atlas) |
| 2023-10-12 | Th | Regression Review ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/10-regression/10-regression.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/10-regression/10-regression.pdf), [.Rmd](lectures/10-regression/10-regression.Rmd)) | Read [Effect Ch 13](https://theeffectbook.net/ch-StatisticalAdjustment.html) or [Mixtape Ch 2](https://mixtape.scunning.com/02-probability_and_regression), [Watch Causal Effects of Neighborhoods](https://youtu.be/_7epNon8wi8?si=VM_f24hrwhVzwE9K) | |
| 2023-10-17 | T | Causal Inference ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/10a-causal-neighborhoods/10a-causal-neighborhoods.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/10a-causal-neighborhoods/10a-causal-neighborhoods.pdf), [.Rmd](lectures/10a-causal-neighborhoods/10a-causal-neighborhoods.Rmd)) | Read [Effect Ch 13](https://theeffectbook.net/ch-StatisticalAdjustment.html) or [Mixtape Ch 2](https://mixtape.scunning.com/02-probability_and_regression), [Watch Causal Effects of Neighborhoods](https://youtu.be/_7epNon8wi8?si=VM_f24hrwhVzwE9K) | |
| 2023-10-24 | T | Data Tips ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/03-data-tips/03-data-tips.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/03-data-tips/03-data-tips.pdf), [.Rmd][lectures/03-data-tips/03-data-tips.Rmd] | | | 
| 2023-10-26 | Th |  |  | | 
| 2023-10-31 | T | Difference-in-differences ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/11-diff-in-diff/11-diff-in-diff.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/11-diff-in-diff/11-diff-in-diff.pdf), [.Rmd](lectures/11-diff-in-diff/11-diff-in-diff.Rmd)), Panel data and two-way fixed effects ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/11a-panel-twfe/11a-panel-twfe.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/11a-panel-twfe/11a-panel-twfe.pdf), [.Rmd](lectures/11a-panel-twfe/11a-panel-twfe.Rmd)) | [Watch first 40min of Teachers and Charter Schools](https://youtu.be/iIIlb1hTbTc?si=rGHD2LCckhG7Rdwn) | |
| 2023-11-02 | Th | Regression Discontinuity Design ([.html](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/12-regression-discontinuity/12-regression-discontinuity.html), [.pdf](https://raw.githack.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/main/lectures/12-regression-discontinuity/12-regression-discontinuity.pdf), [.Rmd](lectures/12-regression-discontinuity/12-regression-discontinuity.Rmd)) | Read [Effect Ch 20](https://theeffectbook.net/ch-RegressionDiscontinuity.html) or [Mixtape Ch 6](https://mixtape.scunning.com/06-regression_discontinuity) | | 
| **Machine Learning** | | |
| 2023-11-07 | T | Functions & Parallel Programming | [Refer to Chapters 2-4 of DS4E](https://grantmcdermott.com/ds4e/funcs-intro.html) | |
| 2023-11-09 | Th | SQL | | [Problem Set 4 due 11/13 at 11:59:59](https://github.com/ECON368-fall2023-big-data-and-economics/ps4-class-sizes) |
| 2023-11-14 | T | Machine Learning: Decision trees | [Read ISLR 8.1](https://hastie.su.domains/ISLR2/ISLRv2_corrected_June_2023.pdf) | |
| 2023-11-16 | Th | Machine Learning: Bias and Judicial Decisions | [Watch Improving Judicial Decisions](https://youtu.be/AuNzoCk_uxM?si=dFpn0aQel4amdH-_) | |
| 2023-11-28 | T | Machine Learning: Regressional penalization | [Read ISLR Ch 6.1, 6.2](https://hastie.su.domains/ISLR2/ISLRv2_corrected_June_2023.pdf)  | Problem Set 5 due 11/27 at 11:59:59 |
| 2023-11-30 | Th | Machine Learning: Causal Forests, at-risk youth application | [Read ISLR 8.2](https://hastie.su.domains/ISLR2/ISLRv2_corrected_June_2023.pdf) | |
| 2023-12-05 | T | Regular expressions, WordClouds | [Read Gentzkow (2019): Text as Data](https://bates.primo.exlibrisgroup.com/discovery/openurl?institution=01CBB_BCOLL&vid=01CBB_BCOLL:BATES&volume=57&date=2019&aulast=Gentzkow&issue=3&issn=0022-0515&spage=535&id=doi:10.1257%2Fjel.20181020&auinit=M&title=Journal%20of%20Economic%20Literature&atitle=Text%20as%20data&sid=google) | |
| 2023-12-07 | Th | Sentiment Analysis | [Read Stephens-Davidowitz (2014)](https://www.sciencedirect.com/science/article/pii/S0047272714000929) | Problem Set 6 due 12/11 at 11:59:59 |
| If time | T | Topics Modeling, LLMs | [Read Ash and Hansen (2023): Text Algorithms](https://www.annualreviews.org/doi/pdf/10.1146/annurev-economics-082222-074352) | |
| If time | Th | AI and bias | Read [Rambachan et al (2020)](https://www.jstor.org/stable/pdf/27042527.pdf) and [Cowgill et al. (2019)](https://conference.nber.org/confer/2019/YSAIf19/SSRN-id3361280.pdf) | |

## Goals for this course

This class is about helping you build good habits for doing organized and reproducible empirical work. It is not about learning specific R packages or functions. 

- Organize empirical projects that are replicable, reproducible, and collaborative using good programming practices
- Collect and clean big or novel datasets using APIs, web scraping, and other methods
- Use Big Data to generate key insights about economic opportunity, inequality, and other social problems
- Understand the differences between prediction, causality, and description, and when to apply each
- Explain what data science is, and how Big Data differs from other types of data 

## Navigating the course

- All problem sets and lectures are linked above in the [calendar](#lectures)
- The repository for each problem set, these course materials, and your class presentations are all linked in the [organization page](https://github.com/orgs/ECON368-fall2023-big-data-and-economics/repositories)

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
- Check the GitHub Issues tab (for all repositories) at least once per day to answer questions

### For students

- Check the [calendar](#lectures) within 24 hours of each lecture to see any materials you need to download/review
- Fork the main problem set repository within 48 hours of the problem set being posted
- Open problem set data and code within 48 hours of the problem set being posted
- Work on problem sets in groups, but turn in your own code
- Post questions about material or problem sets to [GitHub Issues](https://github.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials/issues) unless it is of a private matter (e.g. grades, extensions)
    - There is a GitHub Issues tab within every problem set that I create, please post questions about problem sets directly to the tab for each problem set
    - If I receive an email with a question that will benefit everyone, I will ask you to post it to GitHub Issues
    - This is so that everyone can benefit from the answer
    - Also, it will encourage collaboration
- Use computers in class for class-related activities only
- Seek out solutions to coding problems you run into
    1. Read error messages and see if you can immediately solve the problem
    2. Think before going to Google/ChatGPT: "How would I read a small portion of a large dataset in R?" (Use this services proactively, not reactively)

### How I will run class

Most classes will be divided into a "lecture" and an "interactive" component. During the lecture, computers will be closed. During the interactive component, computers will be open for you to work through it. 

## Resources to use for class

This course is taught in R, but the goal is not for students to learn individual R functions and packages. That is something a person could do using generative AI, existing R vignettes and demos, and other online resources. With that in mind, I expect students in this course to make ample use of the countless free resources on the internet to learn R. Here are a few that I recommend:

### On R

- [_R_ For Data Science](https://r4ds.had.co.nz/) by Hadley Wickham and Garrett Grolemund
- [Advanced _R_](https://adv-r.hadley.nz/) by Hadley Wickham
- [Geocomputation with _R_ by Robin Lovelace](https://geocompr.robinlovelace.net/) by Jakub Nowosad, and Jannes Muenchow
- [_Posit_ Cheatsheets](https://rstudio.com/resources/cheatsheets/)
- [R Programming for Data Science](https://bookdown.org/rdpeng/rprogdatascience/) by Roger D. Peng
- [Bates Alumni Eli Mokas and Ian Ramsay's RStudio Tutorial](https://www.youtube.com/watch?v=Ih84O1vfH8Y&t=3391s)

### On R Markdown

- [_RStudio_ Gallery](https://rmarkdown.rstudio.com/gallery.html)
- [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) by Yihui Xie, J. J. Allaire, and Garrett Grolemund

### Econometrics, Statistics, Data Science with R examples

- [An Introduction to Statistical Learning](https://statlearning.com) by Gareth James, Daniela Witten, Trevor Hastie, and Robert Tibshirani
- [Data Science for Economists and Other Animals](https://grantmcdermott.com/ds4e/) by Grant McDermott and Ed Rubin
- [Causal Inference: The Mixtape](https://mixtape.scunning.com/) by Scott Cunningham
- [The Effect](https://www.theeffectbook.net/) by Nick Huntington-Klein
- [Spatial Data Science](https://r-spatial.org/book/) by Edzer Pebesma and Roger Bivand
- [Data Visualization: A practical introduction](http://socviz.co/) by Kieran Healy 
- [Curated List by Nathan Tefft](https://docs.google.com/spreadsheets/d/1yLNdpb0TkYfNN-phme1Amt4XPU1bOB6vINHam1ss_fk/edit#gid=1544370596)

### Staying organized

- [Code and Data for the Social Sciences: A Practitioner's Guide](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) by Matthew Gentzkow and Jesse Shapiro
- [Coding for Economists: A Language-Agnostic Guide](https://scholar.harvard.edu/sites/scholar.harvard.edu/files/ristovska/files/coding_for_econs_20190221.pdf)
- [happygitwithr](https://happygitwithr.com/) by Jenny Bryan

### Large Language Models

You are actively encouraged to use generative AI assistants in this class. These can be used to improve your code, refine your writing, iterate on your ideas, and more.

- [Sign-up for ChatGPT](https://chat.openai.com/auth/login)
- [Sign-up for GitHub CoPilot](https://github.com/features/copilot)
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

Chrissy Aman is our Course-Attached tutor. She will host office hours in the SASC and will be available for individual appointments. Her hours are:

- Fridays at 6:45pm
- Sundays at 10am-12pm in PGill 227

Chrissy can help you troubleshoot *R*. She does not know have solution to the problem sets, but she can help you figure them out. 

## Other details

This is an undergraduate course taught by [Kyle Coombs](https://kylecoombs.com/). Here is the course description, right out of the [syllabus](syllabus/syllabus.pdf):

Economics is at the forefront of developing statistical methods for analyzing data collected from uncontrolled sources. Since econometrics addresses challenges in estimation such as sample selection bias and treatment effects identification, the discipline is well-suited for the analysis of large and unsystematically collected datasets. This course introduces statistical (machine) learning methods, which have been developed for analyzing such datasets but which have only recently been implemented in economic research. We will cover a variety of topics including data collection, data management, data description, causal inference, and data visualization.  The course also explores how econometrics and statistical learning methods cross-fertilize and can be used to advance knowledge in the numerous domains where large volumes of data are rapidly accumulating. We will also cover the ethics of data collection and analysis. The course will be taught in *R*. 

## Grading policy
| Component                                 | Weight | Graded |
|-------------------------------------------|--------|--------|
| 7 × problem sets (10% each)               | 50%    | Top 5  |
| 1 × short presentation                    | 10%    | Top 1  |
| 1 × final project                         | 40%    | [In parts](https://github.com/ECON368-fall2023-big-data-and-economics/final-project) |
| Participation                             | Bonus up to 10%    | End of course  |

- Short presentations summarize either a key lecture reading, or an (approved) software package/platform.
    - Sign up [here](https://github.com/ECON368-fall2023-big-data-and-economics/presentations-team)
- Extensions: Each of you gets three ''grace period'' days to extend deadlines. 
- You can use these days in any way you like, but once they're gone, they're gone.

### Bonus points:

There are several opportunities for bonus points during the semester:

1. A 2.5% bonus on your final grade for issuing a *pull request* to any open source material -- including these lecture notes. This can be to fix a typo or to fix a bug in the code.
2. A 2.5% participation bonus on your final grade that I will award at my discretion.
3. I offer a bonus point for each typo corrected on problem sets *and* solutions. This is capped at 10 points per student per problem set. You must pull request and/or raise an Issue on the corresponding GitHub repository to get credit.
4. Participation on GitHub as mentioned

I have given instructions on how to execute a pull request of a *specific* commit (instead of your entire commit history) in the [FAQ](#pull-request-of-a-specific-commit).

### Problem sets

Throughout the course you will engage in problem sets that deal with actual data. These may seem out of step with what we do in class, but they are designed to get you to think about how to apply the tools we learn in class to real data. As the class progresses, the problem sets will align more neatly with the material.

- Problem sets are coding assignments that get you to play with data using R
- They are extremely challenging, but also extremely rewarding
- With rare exceptions: You will not be given clear-cut code to copy and paste to accomplish these data cleaning tasks, but instead given a set of instructions and asked to figure out how to write code yourself
- You are encouraged to work together on problem sets, but you must write up your own answers (unless it is a group assignment)
- All problem sets will be completed and turned in as GitHub repositories

#### What you will turn in:

- Each problem set will be posted as a GitHub repository, which you will fork, set to private, and then clone to your computer (instructions provided in each problem set)
- You will then work on the problem set on your computer, and push your code to GitHub (push often!)
- For each problem set, you will turn in modular code (i.e. separate files do separate things) that accomplishes the tasks outlined in the problem set
- You will also turn in a `.Rmd` file that contains your answers to the questions in the problem set along with a knitted `.html` or `.pdf` of your `.Rmd`
    - This `.Rmd` will "source" the code you wrote, so I can easily run your code from start to finish by `knitting`
- Your problem sets will have a sensible folder structure that is easy to navigate (name folders `code`, `data`, `output`, etc.)
- You will turn in your problem sets by pushing your code to GitHub. 

**Grading**

Your problem sets are graded on three dimensions: 

1. Submission via GitHub (10%): Did you use GitHub to stage, commit, and push your code? Did you submit the assignment on time? Did you submit the assignment in the correct format?
2. Quality of code (30%): Is it well-commented? Is it easy to follow? Can I run it?
    - Any scripts needed to run your code should be included in the repository and sourced in the `.Rmd` file
    - Write code that automates as much of the process as possible. For example, if you need to download a file, write code that downloads the file automation
    - If you cannot figure out how to automate a step, you can write a comment explaining what I need to do to run your code (you will lose very few points)
3. Quality of presentation of graphs and tables (30%): Are they well-labeled? Do they have titles? Do they have legends? Are they formatted well?
4. Quality of answers (30%): Are they clear? Do they answer the question?

#### Solutions 

The solutions are made public within a week of the problem set being posted.

#### Improving your grade

In an effort to incentivize you to see coding as an ongoing process of learning and improvement, I will allow you to improve the coding and presentation quality portions of your grade on any problem set. However, you cannot just copy and paste the solutions. 

Instead, you must provide carefully commented explanations of each step of the code -- whether from the solutions or of your own invention. This is a great way to learn, but it is also a lot of work. 

*Example.* You might write add a comment like this to the top of your code:

```r
# Create directories, suppress warning that the directory already exists
suppressWarnings({
    dir.create(data)
    dir.create(documentation)
    dir.create(code)
    dir.create(output)
    dir.create(writing)
})
```

**You must let me know that you are submitting for a regrade.**

### Final Project

You will write a final project over the course of the semester. Further details are available [here](https://github.com/ECON368-fall2023-big-data-and-economics/final-project).

### Participation

Participation on GitHub is a bonus worth up to 10% of your grade. I will rate participation based on the following criteria:

- Are you posting thoughtful questions to GitHub Issues? Follow the guidelines on [stackoverflow](https://stackoverflow.com/help/how-to-ask) for posting a good question. 
- Are you replying to questions on GitHub Issues? Follow the guidelines on [stackoverflow](https://stackoverflow.com/help/how-to-answer#:~:text=Read%20the%20question%20carefully&text=Make%20sure%20your%20answer%20provides,going%20in%20the%20right%20direction.) to write a good answer.

The goal is to encourage you to work together to solve problems. This is one of the most important skills you can take away from this, and really any, course. I also want to incentivize you to think carefully about how you post. Be kind and respectful, as much as you endeavor to be clear, concise, and helpful.

For each problem set, use the Issues tab for that specific problem set. For course materials, you can use that tab. 

I will be monitoring the GitHub Issues tab for each repository and will award participation points to those who are actively engaging per the guidelines from stackoverflow. 

**Note: The main class page is a public repository so others can come and try to use these materials. Please do not post personal information here.**

## FAQ

### If you find a typo in these lecture notes

Please raise an issue or submit a pull request. For those taking this course, I offer a 2.5% bonus on your final grade for issuing a *pull request* to any open source material -- including these lecture notes. This can be to fix a typo or to fix a bug in the code. 

### How do I download this material and keep up to date with any changes?

Please note that this is a work in progress, with new material being added every week. 

If you just want to read the lecture slides or HTML notebooks in your browser, then you should simply scroll up to the [Lectures](#lectures) section at the top of this page. Completed lectures will be hyperlinked as soon as they have been added. Remember to check back in regularly to get any updates. Or, you can watch or star the repo to get notified automatically.

If you actually want to run the analysis and code on your own system (highly recommended), then you will need to download the material to your local machine. The best way to do this is to clone the repo via Git and then pull regularly to get updates. Please take a look at [these slides](https://raw.githack.com/uo-ec607/lectures/main/02-git/02-git.html) if you are unfamiliar with Git or are unsure how to do any of that. Once that's done, you will find each lecture contained in a numbered folder (e.g. `01-intro`). The lectures themselves are written in R Markdown and then exported to HMTL format. Click on the HTML files if you just want to view the slides or notebooks.

### I've spotted a mistake or would like to contribute

Please [open a new issue](https://help.github.com/articles/creating-an-issue/). Better yet, please fork the repo and [submit an upstream pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/). I'm very grateful for any contributions, but may be slow to respond while this course is still be developed. Similarly, I am unlikely to help with software troubleshooting or conceptual difficulties for non-enrolled students. Others may feel free to jump in, though.

### Can I use/adapt your material for a similar course that I'm teaching?

Sure. I already borrowed half of it Grant McDermott, Tyler Ransom, Raj Chetty, and Stephen Hansen (links to their pages to come). I have also kept everything publicly available. I ask two favours (like Grant McDermott) 1) Please let me know ([email](mailto:kcoombs@bates.edu) if you do use material from this course, or have found it useful in other ways. 2) An acknowledgment somewhere in your own syllabus or notes would be much appreciated.

### Pull Request of a Specific Commit

If you want to make a pull request of a specific commit (and not all changes you have made), you have two options:

**Option 1: Manually create a new fork**

1. Create a separate fork of the upstream repository for each commit you want to make a pull request for. 
2. Clone this separate fork to your local machine, make the changes, commit, and push.
3. Pull request from this separate fork.

This is the easiest option, but it does mean you will have to clone multiple forks to your local machine.

**Option 2: Use the command line (Git Bash, WSL, Terminal)**

1. Create a fork of this repository (called the upstream repository) if you have not before
2. Clone the forked repo to your local computer
3. Add the original repo as a remote called `upstream` (enter `git remote add upstream <upstream-repo-url>`)
4. Fetch the upstream repo (`git fetch upstream`)
5. Create a branch of this upstream repo (`git checkout -b <pull-request-branch-name> upstream/main`)
6. Either:
    - Make the changes you want to make to the code
    - Cherry pick the specific commit you want to merge as a pull request by typing `git cherry pick <commit-hash>` into the command line
        - A commit hash is a unique combination of letters and numbers that identifies a specific commit. You can find the commit hash by running `git log` and copying the hash of the commit you want to make a pull request for OR by clicking on the commit history on GitHub and copying the SHA (the icon with two interlocked squares.)
7. Push this branch to the forked repository with `git push -u origin <pull-request-branch-name>`
8. Return to your forked repo's main branch with `git checkout -b origin/main`
9. Navigate to your forked repository on GitHub and create a pull request from the branch you just pushed (you should see a banner that says "Compare & pull request" when you navigate to your forked repo)
10. Make sure: 
    - The **base repository** is the upstream repo and the base is the main branch
    - The **head repository** is your forked repo and the compare is the the branch named `<pull-request-branch-name>`
11. *Optional*: Destroy the pull-request-branch once it has served its purpose with `git branch -d <pull-request-branch-name>`


## License

The material in this repository is made available under the [MIT license](http://opensource.org/licenses/mit-license.php). 