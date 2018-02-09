Copyright (c) 2017 VADE Developers

# Mac OS X High Sierra Build Instructions and Notes

The commands in this guide should be executed in a Terminal application. The built-in one is located in /Applications/Utilities/Terminal.app.

## Preparation

Install the OS X command line tools:

```
xcode-select --install
```

When the popup appears, click Install.

Then install Homebrew from https://brew.sh

## Dependencies

```
brew install openssl berkeley-db4 miniupnpc
brew link --force berkeley-db4
brew upgrade openssl

brew install boost@1.55 --c++11 
brew link boost@1.55 --force
```

## Download VADE Core

Clone the VADE source code and cd into VADE

```
git clone git@github.com:suchapp/VADE.git && cd VADE
```

## Optional: build and run headless VADEd daemon

Configure and build the headless VADE binaries to verify that everything is working

```
cd src/

make -f makefile.osx-homebrew
```

### Running headless VADEd daemon

VADE Core is now available at ./src/VADEd

Before running, it's recommended you create an RPC configuration file.

```
echo -e "rpcuser=VADEdogerpc\nrpcpassword=$(xxd -l 16 -p /dev/urandom)" > "/Users/${USER}/Library/Application Support/VADE/VADE.conf"

chmod 600 "/Users/${USER}/Library/Application Support/VADE/VADE.conf"
```

The first time you run VADEd, it will start downloading the blockchain. This process may take several days.

You can monitor the download process by looking at the debug.log file:

```
tail -f $HOME/Library/Application\ Support/VADE/debug.log
```

Other commands:

```
./src/VADEd -daemon # Starts the bitcoin daemon.
./src/VADEd --help # Outputs a list of command-line options.
./src/VADEd help # Outputs a list of RPC commands when the daemon is running.
```

## Building the VADE-QT app without QT Creator

Install dependencies using homebrew

```
brew install qt qrencode
```

Configure and build VADE-QT
```
/usr/local/Cellar/qt/5.10.0_1/bin/qmake -config release VADE-QT.pro "USE_UPNP=1" "USE_QRCODE=1" "RELEASE=1"

make -f Makefile 
```

Package VADE in .dmg
```
sudo easy_install appscript

python2.7 contrib/macdeploy/macdeployqtplus VADE-QT.app -add-qt-tr da,de,es,hu,ru,uk,zh_CN,zh_TW -dmg -fancy contrib/macdeploy/fancy.plist -verbose 2
```

# Notes

Tested on macOS 10.13 High Sierra on 64-bit Intel processor only.

Original source: https://github.com/bitcoin/bitcoin/blob/master/doc/build-osx.md