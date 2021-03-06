My App Experiment
========================================================
author: Travis Jacobs
date: Sept. 17, 2014
transition: rotate

WHO
========================================================
title:false


<h1><b>WHO</b> are you?</h1>
<br>
My name is Travis Jacobs, and I am a student of the Data Science track on Coursera.   
   
I'm doing the whole thing out of order, but I'm still getting along fine :-)

WHAT
========================================================
title:false

<h1><b>WHAT</b> are you doing here?</h1>
<br>
This is a presentation required for the Developing Data Products course, and it's supposed to introduce a shiny app.   
   
My app is going to give a (*kind of*) visualization of some demographics, but it's mostly going to demo graphics.

WHERE
========================================================
title:false

<h1><b>WHERE</b> did you get data?</h1>
<br>
I took the data from <a href="http://opendata.gov.nl.ca/public/opendata/page/?page-id=datasets-tabular">here.</a>

It deals with population data from Newfoundland, Canada.

WHEN
===============
title:false

<h1><b>WHEN</b> is it from?</h1>
<br>
The data gives population estimates for communities over the years 2010, 2011 and 2012.

In each case, the populations for different age groups are summed across all communities, for each year.
A snippet of example code for a single year is on the next slide.

==============


```r
dataset <- data.frame(rbind(c(450, 250, 100), c(220, 180, 550)))
colnames(dataset) <- c("Age 0-25", "   Age 26-50", "   Age 50+")
rownames(dataset) <- c("Community A", "Community B")
print(dataset)
```

```
            Age 0-25    Age 26-50    Age 50+
Community A      450          250        100
Community B      220          180        550
```

```r
total <- colSums(dataset)
print(total)
```

```
    Age 0-25    Age 26-50      Age 50+ 
         670          430          650 
```

WHY
=============
title:false
<h1><b>WHY</b> are you doing this?</h1>
<br>
I'm interested in so-called "open data" released by governments, as well as analyses of these data to gain further knowledge. 

That's why I'm taking this course!


Thanks for reading :-)
