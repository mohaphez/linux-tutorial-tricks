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
 
# Yum (YellowDog Update Manager) is a repository tools and rpm package manager 
# it's allows you to query ,install and remove software packages on Redhat based distributions
    # yum command use the /etc/yum.repos.d/ directory to hold files that list the different repositories it checks for packages . 
    ls /etc/yum.repos.d/  # viewing the repository files on a CentOS distro
    yum check-update      # Checks the repository for updates to installed packages 
    yum clean             # Remove temporary files downloaded during install 
    yum info nano         # Displays information about the specified package. In this case is nano 
    yum install nano      # Installs the specified package . In this case is nano 
    yum list              # Displays information about installed packages 
    yum reinstall nano    # Reinstalls the specified package 
    yum remove nano       # Removes a package from the system 
    yum search docker     # Searches repository package names and descriptions for specified keyword. In this case is docker
    yum update            # Updates the specified packages to the latest version in the repository
    yum upgrade           # Updates specified packages but removes obsolete packages. 

### The dnf (dandified yum) is included as part of the Fedora Linux distribution as a replacement for yum
### dnf provides some advanced features that yum is missing . 

# The openSUSE Linux distribution uses the RPM package management system and distributes software in .rpm files but doesn't use the yum or dnf tool. Instead , Its use own package management tool and called ZYpp 
    # zypper allows you to query ,install and remove software packages on opensuse distribution
    zypper info nano         # Displays information about the specified package. In this case is nano 
    zypper install nano      # Installs the specified package . In this case is nano 
    zypper remove nano       # Removes a package from the system 
    zypper search docker     # Searches repository package names and descriptions for specified keyword. In this case is docker
    zypper update            # Updates the specified packages to the latest version in the repository