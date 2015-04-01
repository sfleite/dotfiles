if(interactive()){
       library(colorout)
       library(setwidth)
       options(vimcom.verbose = 1) # optional
       library(vimcom)
   }

options(repos=c(
                "http://cran.dcc.fc.up.pt/",
                "http://brieger.esalq.usp.br/CRAN/",
                "http://cran-r.c3sl.ufpr.br/"
                )
        )

# Use the text based web browser w3m to navigate through R docs
       # in Linux Console after help.start():
       if(Sys.getenv("TMUX") != "" && Sys.getenv("DISPLAY") == "")
	   options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))

