# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting Java Home
export JAVA_HOME=$(/usr/libexec/java_home)
export JDK_HOME=$(/usr/libexec/java_home)

# Setting Android Dev Tools
export PATH=$PATH:/Users/dianah/Documents/adt-bundle-mac-x86_64-20140702/sdk/platform-tools/

# Setting PATH for Go 1.4
#export PATH=/usr/local/go/bin
export GOPATH=$HOME/6.824 #usr/local/Cellar/go/
# Setting path for gnuradio
export PYTHONPATH=/usr/local/lib/python2.7/dist-packages

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# added by Anaconda 1.9.1 installer
export PATH="/Users/dianah/anaconda/bin:$PATH"

# avr dev tools
export PATH=$PATH:/usr/local/bin
##

# Add gradle 
export PATH=/usr/local/bin/gradle-3.3/bin:$PATH

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi


# Add custom functions
source "/Users/dianah/.bashrc"
# Uncomment to enable pretty prompt:
export MOOSE_PROMPT=true

# Uncomment to enable autojump:
export MOOSE_JUMP=true

# Source MOOSE profile
if [ -f /opt/moose/environments/moose_profile ]; then
        . /opt/moose/environments/moose_profile
fi


##
# Your previous /Users/dianah/.bash_profile file was backed up as /Users/dianah/.bash_profile.macports-saved_2015-01-04_at_17:16:11
##
# DISABLED MACPORTS FOR EXPERIMENTATION WITH HOMEBREW
# MacPorts Installer addition on 2015-01-04_at_17:16:11: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#export PATH="/usr/local/bin:$PATH"
