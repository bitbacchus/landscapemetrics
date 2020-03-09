devtools::install_github("karthik/holepunch")
library("holepunch")

# Some comments from https://github.com/karthik/holepunch

# Pros:
# You can launch a free instance of Rstudio server from any of your projects on GitHub. The instance will have all of your dependencies and version of R installed and ready to go!
# Easily allow anyone (up to 100 simultaneous users) to replicate or modify your analysis
# Free

# Cons:
# The server has limited memory so you cannot load large datasets or run big computations
# Binder is meant for interactive and ephemeral interactive coding so an instance will die after 10 minutes of inactivity.
# An instance cannot be kept alive for more than 12 hours

# to write a description, with dependencies. Be sure to fill in placeholder text
holepunch::write_compendium_description(package = "Corona OA analysis",
                                        description = "Searching Europe PMC for publications about Corona virus (2019-nCoV)")

# To write a Dockerfile. It will automatically pick the date of the last
# modified file, match it to that version of R and add it here. You can
# override this by passing r_date to some arbitrary date
# (but one for which a R version exists).
holepunch::write_dockerfile(maintainer = "Sebastian")

holepunch::generate_badge() # This generates a badge for your readme.

