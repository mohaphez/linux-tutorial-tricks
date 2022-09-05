# #### Here we'll learn how manage packages on redhat based distributions  ####

# Some of the redhat based distributions: 
    # CentOS
    # Rocky
    # AlmaLinux
    # Oracle 
    # Fedora
    # ClearOS
    # EuroLinux
    # EulerOS

# Download rpm files with yumdownloader utility 
    yumdownloader emacs 
     # This utility download the emacs RPM file to your current working directory 
    ls -l *.rpm 
     # check RPM file downloaded successfully .

# The rpm is utility lets you install , modify and remove software packages . 
# RPM package files have an .rpm file extention and follow this naming format :
    # PACKAGE-NAME-VERSION-RELEASE.ARCHITECTURE.rpm
        # PACKAGE-NAME : the name of the software package. expamle : sublime
        # VERSION : it's the program's version number and represents modification that are more recent than older version numbers
        # RELEASE: it's also called build number . it represents a smaller program modification than does the version number
        # ARCHITECTURE: This is a designation of the CPU architecture for which the software package was optimized . 
    rpm -i emacs*.rpm # install the rpm file on your system . 
    rpm -U emacs*.rpm # install or upgrades the specified package . 
    rpm -e emacs      # remove the package 
    rpm -q emacs      # check the package is installed or not 
    rpm -q docker     
    rpm -Uvh emacs*.rpm  # -vh option that shows the progress of an update and what it's doing . 
    rpm -qi  emacs       # if the package is installed show you more information such as install date , group,size,etc
    rmp -qR  emacs       # -R option displays various package requirements 
    rpm -qa              # -a option shows all installed rpm packages on your system.
    rpm -qc  emacs       # -c option shows package configuration filenames and paths that belongs to a package 
 
