gitsetup.exe - Git on Windows
========

A clean and simple setup specifically designed to install Git on Windows.
Git is installed and seamlessly integrated into your PATH to work from any
command prompt. Special shortcuts and "Git command prompt from here" shell
extensions are unnecessary. This is pure Git on Windows.

gitsetup.exe is a Burn Bundle (see the [WiX toolset](http://wixtoolset.org/))
that contains a single Windows installer package (.msi). The Windows installer
package provides a robust, transacted installation for msysGit.

Also includes:

* [git-credential-winstore](http://gitcredentialstore.codeplex.com/) and [Git Credential Manager](https://github.com/Microsoft/Git-Credential-Manager-for-Windows) - Windows
credential store managers are small helper apps that reduce the amount you are prompted
for credentials. They implement the git credentials API as defined by the [Git Documentation](https://github.com/gitster/git-htmldocs/blob/master/technical/api-credentials.txt).

* [git-flow](https://github.com/nvie/gitflow) - GitFlow is a collection
of Git extensions to provide high-level repository operations for Vincent
Driessen's [branching model](http://nvie.com/git-model).

* [posh-git](https://github.com/dahlbyk/posh-git) - Posh-git is a set of
PowerShell scripts which provide Git/PowerShell integration.


Current status:

[![Build status](https://ci.appveyor.com/api/projects/status/6s25qrwshkyjgq55?svg=true)](https://ci.appveyor.com/project/bleissem/gitsetup)
