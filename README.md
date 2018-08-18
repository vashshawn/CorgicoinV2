
VADE Official Development Repo
==================================

### What is VADE?
VADE ( Peer-to-Peer Coin ) is the first [cryptocurrency](https://en.wikipedia.org/wiki/Cryptocurrency) design introducing proof-of-stake consensus as a security model, with a combined [proof-of-stake](https://en.wikipedia.org/wiki/Proof-of-stake)/[proof-of-work](https://en.wikipedia.org/wiki/Proof-of-work_system) minting system. VADE is based on [Bitcoin](https://bitcoin.org), while introducing many important innovations to cryptocurrency field including new security model, energy efficiency, better minting model and more adaptive response to rapid change in network computation power.

### VADE Resources
* Client and Source:
    * [Client Binaries](https://github.com/anodec/VADE/releases)
    * [Source Code](https://github.com/anodec/VADE)
* Prices: 
    * [CoinMarketCap](https://coinmarketcap.com/currencies/corgicoin/)
* Exchanges: 
    * [Cryptopia](https://www.cryptopia.co.nz/Exchange/?market=CORG_BTC)
* Community: 
    * [Discord](https://discord.gg/wqcASqq)
* Resources: 
    * [Bitcointalk](https://bitcointalk.org/index.php?topic=1373179.0)
    * [Wiki and Installation guides](https://github.com/anodec/VADE/wiki)

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
* From time to time a pull request will become outdated. If this occurs, and the pull is no longer automatically mergeable; a comment on the pull will be used to issue a warning of closure.  Pull requests closed in this manner will have their corresponding issue labeled 'stagnant'.
* For development ideas check the discord channel.

## Branches:

### develop (all pull requests should go here)
The develop branch is used by developers to merge their newly implemented features to.
Pull requests should always be made to this branch (except for critical fixes), and could possibly break the code.
The develop branch is therefore unstable and not guaranteed to work on any system.

### master (only updated by group members)
The master branch get's updates from tested states of the develop branch.
Therefore, the master branch should contain functional but experimental code.

### release-* (the official releases)
The release branch is identified by it's major and minor version number e.g. `release-3.1`.
The official release tags are always made on a release branch.
Release branches will typically branch from or merge tested code from the master branch to freeze the code for release.
Only critical patches can be applied through pull requests directly on this branch, all non critical features should follow the standard path through develop -> master -> release-*