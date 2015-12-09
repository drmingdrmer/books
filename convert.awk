BEGIN {
    j=0
};

{
    if (i>15) {
        fn = sprintf("%04d.html",j)
        fnprev = sprintf("%04d.html",j-1)
        fnnext = sprintf("%04d.html",j+1)
        print x > "chp/"fn
        print "<p><a href='"fnprev"'>next: " fnprev "</a></p>" >> "chp/"fn
        print "<p><a href='"fnnext"'>next: " fnnext "</a></p>" >> "chp/"fn

        x = ""
        i = 0
        j += 1
    }
    x = "<p>"x "</p>\n" $0
    i = i + 1
}
