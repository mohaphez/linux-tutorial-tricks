# #### Here we'll learn how manage packages on debian based distributions  ####

# Some of the debian based distributions: 
    # Mint
    # Ubuntu
    # Deepin
    # Kali Linux 
    # Parrot OS
    # MX
    # AntiX

# Download deb files with apt utility 
    apt download emacs 
     # This utility download the emacs DEB file to your current working directory 
    ls -l *.deb 
     # check DEB file downloaded successfully .
    
# The dpkg is utility lets you install , modify and remove software packages . 
# DEB package files have an .deb file extention and follow this naming format :
    # PACKAGE-NAME-VERSION-RELEASE.ARCHITECTURE.deb
        # PACKAGE-NAME : the name of the software package. expamle : sublime
        # VERSION : it's the program's version number and represents modification that are more recent than older version numbers
        # RELEASE: it's also called build number . it represents a smaller program modification than does the version number
        # ARCHITECTURE: This is a designation of the CPU architecture for which the software package was optimized . 
    dpkg -i emacs*.deb      # install the deb file on your system . 
    dpkg -C emacs*.deb      # searches for broken installed packages and suggests how to fix them.
    dpkg --configure emacs  # Reconfigures an installed package 
    dpkg -I docker*.deb     # Displays information about and uninstalled packagefile 
    dpkg -l                 # Lists all installed packages matching a specified pattern 
    dpkg -p emacs           # Displays information about an installed 
    dpkg -P emacs           # Removes an installed package , including configuration files
    dpkg -r emacs           # Removes an installed package but leaves the configuration files 
    dpkg -s emacs           # Displays the status of the specified package.

# apt (advance package tool) is a repository tools and debian package manager 
# it's allows you to install and remove software packages on Redhat based distributions
    # apt command use the /etc/apt/sources.list file to indentify the locations of where to look for repositories
    apt autoclean         # Removes information about packages that are no longer in the repository
    apt clean             # Remove temporary files downloaded during install 
    apt install nano      # Installs and updates the specified package . In this case is nano 
    apt remove nano       # Removes a package from the system 
    apt update            # Retrieves updated information about packages in the repository
    apt upgrade           # Updates all installed packages to newest version 

# apt-cache is used to query the package database for package information.
    apt-cache depends nano  # Display the dependencies required for the package 
    apt-cache pkgnames      # Show all the packages installed on the system 
    apt-cache search docker # Displays the name of packages matching the specified package 
    apt-cache showpkg nano  # Lists information about the specified package 
    apt-cache stats         # Displays package statistics for the system 

# Reconfiguring Packages 
    dpkg-reconfiure cups    # it's handy tool for reconfigure packages where they are required configuration when it was installed 

    debconf-show cups      # This tool allows you to view the package's configuration 