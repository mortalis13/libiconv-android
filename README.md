# libiconv for Android

Tested with [**Android NDK r16**](https://developer.android.com/ndk/downloads) on **Windows 10 with Cygwin** and **Linux Mint**.  
Based on the following article: http://danilogiulianelli.blogspot.com/2012/12/how-to-cross-compile-libiconv-for.html.  
The [**libiconv**](https://www.gnu.org/software/libiconv) version used is [**1.15**](http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz).

## Building

- run `ndk-build` from the project directory

## Building another version

- remove the library source from the repository (`jni/libiconv-1.15` folder) and execute the following commands from a **Linux** console (or from a **Cygwin** console on **Windows**)

```
cd jni

wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz
tar zxvf libiconv-1.15.tar.gz

patch -b -p0 < ./iconv-1.15.patch

cd libiconv-1.15
./configure

cd ..
ndk-build
```

- on a **Windows** machine, the `ndk-build` command can be executed from the default Windows console, or as `ndk-build.cmd` from a Cygwin console
- it's also possible to `configure` the source from a **Linux** machine and build the library from a **Windows** console with `ndk-build`
