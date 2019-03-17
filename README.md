CorgiCoin Official Development Repo
==================================

### What is CorgiCoin?
[CorgiCoin] (abbreviated CORG), 

Scrypt Proof of Stake 2.0
VADE Official Development Repo

 ### What is CorgiCoin?	
[CorgiCoin] (abbreviated CORG), A [cryptocurrency](https://en.wikipedia.org/wiki/Cryptocurrency) design introducing proof-of-stake consensus as a security model, with a combined [proof-of-stake](https://en.wikipedia.org/wiki/Proof-of-stake)/[proof-of-work](https://en.wikipedia.org/wiki/Proof-of-work_system) minting system. Corgicoin is based on [Bitcoin](https://bitcoin.org), while introducing many important innovations to cryptocurrency field including new security model, energy efficiency, better minting model and more adaptive response to rapid change in network computation power.
 ### corgicoin Resources
* Client and Source:
    * [Client Binaries](https://github.com/vashshawn/CorgicoinV2/releases)
    * [Source Code](https://github.com/vashshawn/CorgicoinV2)
* Prices: 
    * [CoinMarketCap](https://coinmarketcap.com/currencies/corgicoin/)
* Exchanges: 
    * [Cryptopia]
https://www.cryptopia.co.nz/Exchange/?market=VADE_BTC
https://www.cryptopia.co.nz/Exchange/?market=VADE_LTC
https://www.cryptopia.co.nz/Exchange/?market=VADE_DOGE

* [Nova]
https://novaexchange.com/market/BTC_CORG/
https://novaexchange.com/market/DOGE_VADE/

* Community: 
    * [Discord](https://discord.gg/Mgyyx8Q)
* Resources: 
    * [Bitcointalk](https://bitcointalk.org/index.php?topic=1373179.0)
    * [Wiki and Installation guides](https://github.com/vashshawn/CorgicoinV2/wiki
    
    # Downloading the Corgicoin Wallet

The first way to get the wallet is to download binaries from the
GitHub releases link:

https://github.com/vashshawn/CorgicoinV2/releases

# Building the Corgicoin Wallet

There are two separate flavors of MintCoin wallet:

* Graphical version (a.k.a. `Corgicoin-Qt`)
* Daemon version (a.k.a. `corgicoind`)

They both share much of the same code and are both in the same
repository, but they are built differently.

Directions for the graphical version are found in
[doc/readme-qt.rst](doc/readme-qt.rst).

Directions for the daemon version are found in
[doc/build-unix.txt](doc/build-unix.txt),
[doc/windows-cross-compile.md](doc/windows-cross-compile.md), or
[doc/build-osx.txt](doc/build-osx.txt), depending on whether you are
building for a Unix-like system, Microsoft Windows, or macOS,
respectively.

Note that documentation for building Windows or macOS versions is
out-of-date and may not work. Please let us know if you get it to
work!

# Configuring the Corgicoin Wallet

By default the wallet has a file called `Corgicoin.conf` which stores
the configuration. The location of this file depends on whether you
running in Linux, Windows, or macOS:

|   OS    | Default configuration file                             |
|---------|--------------------------------------------------------|
| Linux   | `~/.MintCoin/MintCoin.conf`                            |
| Windows | `%USERPROFILE%\AppData\Roaming\Corgicoin\Corgicoin.conf` |
| macOS   | `~/Library/Application Support/Corgicoin/Corgicoin.conf` |

Usually this will mean something like
`/home/someuser/.Corgicoin/Corgicoin.conf` for Linux,
`C:\Users\SomeUser\AppData\Roaming\Corgicoin\# Downloading the Corgicoin Wallet

The first way to get the wallet is to download binaries from the
GitHub releases link:

https://github.com/vashshawn/CorgicoinV2/releases

# Building the MintCoin Wallet

There are two separate flavors of Corgicoin wallet:

* Graphical version (a.k.a. `Corgicoin-Qt`)
* Daemon version (a.k.a. `corgicoind`)

They both share much of the same code and are both in the same
repository, but they are built differently.

Directions for the graphical version are found in
[doc/readme-qt.rst](doc/readme-qt.rst).

Directions for the daemon version are found in
[doc/build-unix.txt](doc/build-unix.txt),
[doc/windows-cross-compile.md](doc/windows-cross-compile.md), or
[doc/build-osx.txt](doc/build-osx.txt), depending on whether you are
building for a Unix-like system, Microsoft Windows, or macOS,
respectively.

Note that documentation for building Windows or macOS versions is
out-of-date and may not work. Please let us know if you get it to
work!

# Configuring the Corgicoin Wallet

By default the wallet has a file called `Corgicoin.conf` which stores
the configuration. The location of this file depends on whether you
running in Linux, Windows, or macOS:

|   OS    | Default configuration file                             |
|---------|--------------------------------------------------------|
| Linux   | `~/.Corgicoin/Corgicoin.conf`                            |
| Windows | `%USERPROFILE%\AppData\Roaming\Corgicoin\Corgicoin.conf` |
| macOS   | `~/Library/Application Support/Corgicoin/Corgicoin.conf` |

Usually this will mean something like
`/home/someuser/.Corgicoin/Corgicoin.conf` for# Downloading the Corgicoin Wallet
`C:\Users\SomeUser\AppData\Roaming\Corgicoin\Corgicoin.conf` for Windows,
and
`/Users/SomeUser/Library/Application Support/Corgicoin/Corgicoin.conf`
for macOS.

(Note that there is a separate configuration file for the GUI
application, in a separate directory and called `Corgicoin-Qt.conf`.
Generally that should only be updated by the configuration menus in
the GUI wallet itself.)

Each line in the configuration file looks like `option=value`, sort of
like this:

```
testnet=0
maxconnections=16
listen=1
```

You can set any value there that you can set by calling the wallet
with options on the command-line. To see a full list of possible
values to set, and a brief explaination of what they mean, use:

```
$ ./Corgicoind -?
```

 
 Testing
-------
 Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.
 ### Automated Testing
 Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code.
 Unit tests can be compiled and run (assuming they weren't disabled in configure) with:
  make check
 ### Manual Quality Assurance (QA) Testing
 Large changes should have a test plan, and should be tested by somebody other
than the developer who wrote the code.
 * Developers work in their own forks, then submit pull requests when they think their feature or bug fix is ready.
* If it is a simple/trivial/non-controversial change, then one of the development team members simply pulls it.
* The patch will be accepted if there is broad consensus that it is a good thing. Developers should expect to rework and resubmit patches if they don't match the project's coding conventions (see coding.txt) or are controversial.
* From time to time a pull request will become outdated. If this occurs, and the pull is no longer automatically mergeable; a comment on the pull will be used to issue a warning of closure.  Pull requests closed in this manner will have their corresponding issue labeled 'stagnant'.]
* For development ideas check the discord channel.
 ## Branches:
 ### develop (all pull requests should go here)
The develop branch is used by developers to merge their newly implemented features to.
Pull requests should always be made to this branch (except for critical fixes), and could possibly break the code.
The develop branch is therefore unstable and not guaranteed to work on any system.
 ### master (only updated by group members)
The master branch get's updates from tested states of the develop branch.
Therefore, the master branch should contain functional but experimental code.
 Scrypt Proof of Stake 2.0	### release-* (the official releases)
The release branch is identified by it's major and minor version number e.g. `release-3.1`.
The official release tags are always made on a release branch.
Release branches will typically branch from or merge tested code from the master branch to freeze the code for release.
Only critical patches can be applied through pull requests directly on this branch, all non critical features should follow the standard path through develop -> master -> release-
