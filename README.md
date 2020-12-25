#       Shiny static download.

~ A Shiny R project for testing out different ways of exporting data via static routes. A suitable method for assigning `permanlink`(s) to data file(s) instead of a dynamic path generated per session.

---

## The idea.

The great [`downloadHandler()`](https://shiny.rstudio.com/reference/shiny/1.0.4/downloadHandler.html) can be easily modified to perform different kind of exports as it is well described in [the documentation](https://shiny.rstudio.com/articles/download.html). Because of the dynamic nature of [Shiny](https://shiny.rstudio.com/), it generates the files and serves them by using a temporarily dynamic path.

This project proposes a simple way of serving this same data but with a static path. This is achieve by:

- generating the specific files (i.e. exporting data) and
- storing them on a specific folder.

This directory needs to be specified as a resource path, goal achieved with the [`addResourcePath()`](https://shiny.rstudio.com/reference/shiny/1.4.0/resourcePaths.html) function:

````R
$ addResourcePath('export', 'specific_directory_with_files')
````

Which will let users access the files of `specific_directory_with_files`. 

## Problems with [shinyapps.io](https://www.shinyapps.io/).

One factor to keep in mind is that, although the path is always the same, with the free plan of *shinyapps.io*, the server is not always running. This means that, each time the app is launched, the file which establish the static file, in this case [`server.R`](server.R), needs to be executed to achieve the two previously-described goals. Once this is done (and until the server is shut down for inactivity) the static paths will work.

## Example.

This example is available at https://juancer.shinyapps.io/shinyapp_test/. You can run it locally with:

```R
$ library(shiny)
$ runGitHub("shiny_static_download", "ajuancer")
```

## Contributions.

Any kind of suggestion, questions and any contribution is open. Feel free to fork/open issue/whatever. Clone this repository with `git clone https://github.com/ajuancer/shiny_static_download`.

## License.

[MIT license](LICENSE.md). 