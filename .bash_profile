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

# Setting pinpath for use with zsim
export PINPATH="/Users/diher/UROP/pin-3.2-81205-clang-mac/"

# DISABLED MACPORTS FOR EXPERIMENTATION WITH HOMEBREW
# MacPorts Installer addition on 2015-01-04_at_17:16:11: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#export PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Ordspecsim environment variables:
export PYTHONPATH=/data/sanchez/tools/pymodules/lib/python2.7/site-packages
ZSIMDEPSROOT=/data/sanchez/benchmarks/zsim-deps
export PINPATH=$ZSIMDEPSROOT/pin-2.14-71313-gcc.4.4.7-linux
export PIN_HOME=$PINPATH
export LIBCONFIGPATH=$ZSIMDEPSROOT/libconfig-1.4.9/inst/
export POLARSSLPATH=$ZSIMDEPSROOT/polarssl-1.1.4/
export DRAMSIMPATH=$ZSIMDEPSROOT/DRAMSim2/
export ZSIMARMADILLOPATH=$ZSIMDEPSROOT/armadillo/
export ZSIMAPPSPATH=/data/sanchez/benchmarks/zsim-apps/
export PATH=$PATH:/usr/local/csail/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:$PINPATH
