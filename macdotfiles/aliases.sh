alias list-cpu='sysctl -n machdep.cpu.brand_string' # lists CPU name
# Mac has extened attributes and permisions that aren't part of Linux spec
# `ls - l` shows `+` for extended permisions and `@` for extened attr. 
# extended permision are seen by adding `-e` to `ls`. 
alias extended_attributes='xattr -l' # to expand the `@` sign in `ls -l` 
