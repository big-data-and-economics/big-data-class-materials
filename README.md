# Class Materials for Bates ECON/DCS 368: Big Data and Economics

[Full syllabus](https://github.com/big-data-and-economics/big-data-class-materials/blob/main/syllabus/syllabus.pdf)

[`Lectures`](#lectures) | [`Details`](#details) |
[`FAQ`](#faq) | [`License`](#license)

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

This is in progress. Check back in for progress to be made. 

| Date | Day | Topic | Download | Due | 
|------|-----|-------|----------|-----|
| **Data Science Basics** | | |
| 2023-09-07  | Th | [Introduction to Big Data](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/01-intro/01-Intro.html) | N/A  |  |
| 2023-09-12  | T | [Git slides](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/02-git/02-Git.html#1) by Grant McDermott | N/A | |
| 2023-09-21  | Th | [Empirical Organization slides](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/02-empirical-workflow/02-empirical-workflow.html) | N/A | |
| 2023-09-26 | T | [R Basics](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/04-rlang/04-rlang.html) | N/A | |
| 2023-09-28 | Th | [Data Table](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/05-datatable/05-datatable.html), [Tidyverse](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/05-tidyverse/05-tidyverse.html) | N/A | |
| 2023-10-03 | T | [CSS](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/lectures/06-web-css/06-web-css.html), [Scraping Notes by Jesus Fernández Villaverde and Pablo Guerrón](https://www.sas.upenn.edu/~jesusfv/Lecture_HPC_10_Web_Scrapping.pdf) | [SelectorGadget](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb) (Chrome), [ScrapeMate](https://addons.mozilla.org/en-US/firefox/addon/scrapemate/) (Firefox) | |
| 2023-10-05 | Th | [APIs](https://raw.githack.com/big-data-and-economics/big-data-class-materials/main/mcdermott/07-web-apis/07-web-apis.html) | [JSONView](https://jsonview.com/), [Sign-up](https://research.stlouisfed.org/useraccount/apikey) and register for [Personal API Key](https://research.stlouisfed.org/useraccount/apikey) | |
| 2023-10-10 | T | Spatial Analysis with Opportunity Atlas | | |
| 2023-10-12 | Th | Functions & Parallel Programming | | |
| 2023-10-17 | T | SQL | | |
| **Causal Inference** | | |
| 2023-10-24 | T | Regression Review & Causal Inference | | |
| 2023-10-26 | Th | Panel data and two-way fixed effects | | |
| 2023-10-31 | T | Regression Discontinuity Design | | |
| 2023-11-02 | Th | Applications: college wage premia, Neighborhoods and Mobility, MITA and mining | | |
| **Machine Learning** | | |
| 2023-11-07 | T | Machine Learning: Decision trees | | |
| 2023-11-09 | Th | Machine Learning: Bias and Judicial Decisions | | |
| 2023-11-14 | T | Machine Learning: Regressional penalization | | |
| 2023-11-16 | Th | Machine Learning: Causal Forests, at-risk youth application | | |
| 2023-11-28 | T | Regular expressions, WordClouds | | |
| 2023-11-30 | Th | Sentiment Analysis | | |
| 2023-12-05 | T | Topics Modeling, LLMs | | |
| 2023-12-07 | Th | AI and bias | | |

## Goals for this course

This class is about helping you build good habits for doing organized and reproducible empirical work. It is not about learning specific R packages or functions. 

- Organize empirical projects that are replicable, reproducible, and collaborative using good programming practices
- Collect and clean big or novel datasets using APIs, web scraping, and other methods
- Use Big Data to generate key insights about economic opportunity, inequality, and other social problems
- Understand the differences between prediction, causality, and description, and when to apply each
- Explain what data science is, and how Big Data differs from other types of data 

## Resources to use for class

This course is taught in R, but the goal is not for students to learn individual R functions and packages. That is something a person could do using generative AI, existing R vignettes and demos, and other online resources. With that in mind, I expect students in this course to make ample use of the countless free resources on the internet to learn R. Here are a few that I recommend:

### On R

- [_R_ For Data Science](https://r4ds.had.co.nz/) by Hadley Wickham and Garrett Grolemund
- [Advanced _R_](https://adv-r.hadley.nz/) by Hadley Wickham
- [Geocomputation with _R_ by Robin Lovelace](https://geocompr.robinlovelace.net/) by Jakub Nowosad, and Jannes Muenchow
- [_Posit_ Cheatsheets](https://rstudio.com/resources/cheatsheets/)
- [R Programming for Data Science](https://bookdown.org/rdpeng/rprogdatascience/) by Roger D. Peng

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

- [Code and Data for the Social Sciences: A Practioner's Guide](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) by Matthew Gentzkow and Jesse Shapiro
- [Coding for Economists: A Language-Agnostic Guide](https://scholar.harvard.edu/sites/scholar.harvard.edu/files/ristovska/files/coding_for_econs_20190221.pdf)
- [happygitwithr](https://happygitwithr.com/) by Jenny Bryan

### Student Academic Support Center
Scheduled hours for R held in the Student Academic Support Center (SASC) of the Library are:

- Sunday | 7:30-9pm
- Monday | 12-1pm, 2:30pm-4pm
- Tuesday |12-2:30pm, 6-7:30pm
- Wednesday | 11am-1pm, 6-7:30pm
- Thursday | 12-4pm, 6-7:30pm
- Friday | 11am-12pm

I will also try to get a Course-Attached Tutor for this class.

## Details

This is an undergraduate course taught by [Kyle Coombs](https://kylecoombs.com/). Here is the course description, right out of the [syllabus](https://github.com/big-data-and-economics/big-data-class-materials/blob/main/syllabus/syllabus.pdf):

Economics is at the forefront of developing statistical methods for analyzing data collected from uncontrolled sources. Since econometrics addresses challenges in estimation such as sample selection bias and treatment effects identification, the discipline is well-suited for the analysis of large and unsystematically collected datasets. This course introduces statistical (machine) learning methods, which have been developed for analyzing such datasets but which have only recently been implemented in economic research. We will cover a variety of topics including data collection, data management, data description, causal inference, and data visualization.  The course also explores how econometrics and statistical learning methods cross-fertilize and can be used to advance knowledge in the numerous domains where large volumes of data are rapidly accumulating. We will also cover the ethics of data collection and analysis. The course will be taught in *R*. 

## Grading policy
| Component                                 | Weight | Graded |
|-------------------------------------------|--------|--------|
| 7 × problem sets (10% each)               | 50%    | Top 5  |
| 1 × short presentation                    | 10%    | Top 1  |
| 1 × final project                         | 40%    | [In parts](https://github.com/ECON368-fall2023-big-data-and-economics/final-project) |

- Short presentations summarize either a key lecture reading, or an (approved) software package/platform.
- Extensions: Each of you gets three ''grace period'' days to extend deadlines. 
- You can use these days in any way you like, but once they're gone, they're gone.

### Bonus points:

There are several opportunities for bonus points during the semester:

1. A 2.5% bonus on your final grade for issuing a *pull request* to any open source material -- including these lecture notes. This can be to fix a typo or to fix a bug in the code.
2. A 2.5% participation bonus on your final grade that I will award at my discretion.
3. I offer a bonus point for each typo corrected on problem sets *and* solutions. This is capped at 10 points per student per problem set. 

### Problem sets

Throughout the course you will engage in problem sets that deal with actual data. These may seem out of step with what we do in class, but they are designed to get you to think about how to apply the tools we learn in class to real data. As the class progresses, the problem sets will align more neatly with the material.

- Problem sets are coding assignments that get you to play with data using R
- They are extremely challenging, but also extremely rewarding
- With rare exceptions: You will not be given clear-cut code to copy and paste to accomplish these data cleaning tasks, but instead given a set of instructions and asked to figure out how to write code yourself
- You are encouraged to work together on problem sets, but you must write up your own answers (unless it is a group assignment)
- All problem sets will be completed and turned in as GitHub repositories

**Grading**

Your problem sets are graded on three dimensions: 

1. Submission via GitHub (10%): Did you use GitHub to commit and push your code? Did you submit the assignment on time? Did you submit the assignment in the correct format?
2. Quality of code (30%): Is it well-commented? Is it easy to follow? Can I run it?
3. Quality of oresentation of graphs and tables (30%): Are they well-labeled? Do they have titles? Do they have legends? Are they formatted well?
4. Quality of answers (30%): Are they clear? Do they answer the question?

### Solutions 

The solutions are made public once everyone has turned in the assignment (or the grace period has expired). 

### Improving your grade

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

## License

The material in this repository is made available under the [MIT license](http://opensource.org/licenses/mit-license.php). 