BEGIN {
    j=0
};

{
    if (i>15) {
        fn = sprintf("%04d.html",j)
        fnprev = sprintf("%04d.html",j-1)
        fnnext = sprintf("%04d.html",j+1)
        print "<!DOCTYPE HTML>" > "chp/"fn
        print "<html><body><style> p{font-size: 32pt;} </style>" >> "chp/"fn

        print x >> "chp/"fn
        print "<p><a href='"fnprev"'>next: " fnprev "</a></p>" >> "chp/"fn
        print "<p><a href='"fnnext"'>next: " fnnext "</a></p>" >> "chp/"fn

        print "</body></html>" >> "chp/"fn

        x = ""
        i = 0
        j += 1
    }
    x = x "<p>"$0 "</p>\n"
    i = i + 1
}
