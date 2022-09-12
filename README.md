cordova-plugin-libsqlite
========================

Cordova plugin to provide native SQLite binaries. This package is intended to be installed as a peer dependency of other cordova plugins. It contains only native bindings to the SQLite library, not the webview API. For the WebView API, see [cordova-plugin-sqlite](https://github.com/totalpaveinc/cordova-plugin-sqlite).

The rationale of this package is to provide the native binaries as a shared library to Cordova Applications, that multiple other plugins can use. It's important for an application to use only 1 version/copy of the SQLite library to avoid database corruption. See [Section 2.2](https://www.sqlite.org/howtocorrupt.html#posix_close_bug) & [Section 2.2.1](https://www.sqlite.org/howtocorrupt.html#posix_close_bug) for more information.

## Version Schema

TBD

<!--
I think what is best is to mimic the Major & Minor version of SQLite. So our major & minor always represents the underlying version of SQLite's major/minor. Patches will always be reserved for own builds.
-->

## Usage

Applications should not install this package themselves. It is intended to be a dependency of other cordova plugins, that requires the use of SQLite.

Include `<dependency id="@totalpave/cordova-plugin-libsqlite" version="0.x" />` in your `plugin.xml` file.

Note: Specifying exact versions is not recommended because it may limit capability with other third-party plugins that also depend on this package.

## Android Notes

The binary is compiled with API 24, therefore the application min SDK must be 24 or later.

## Modification Disclaimer

The original unmodified SQLite code is compiled as a static library. This code is part of SQLite's [public domain](https://en.wikipedia.org/wiki/Public_domain).

Additional helper functions may be included under the `TP::sqlite` namespace, as well as Android JNI bindings, which is compiled as the shared library, linking SQLite's static library to produce the distributed `libsqlite3.so`. The Android JNI bindings and helper functions are covered under the [Apache 2.0](./LICENSE). See the [source repository](https://github.com/totalpaveinc/sqlite) for more information.

## License

This plugin is provided under the [Apache 2.0](./LICENSE) license. [SQLite](https://www.sqlite.org/copyright.html) Binaries are provided with no license and is in [public domain](https://en.wikipedia.org/wiki/Public_domain).

## Total Pave Committers

To update this package, pull the AAR/XCFramework files from [sqlite-bin](https://github.com/totalpaveinc/android-libcxx-bin) repository.

To build a new SQLite archive, see the source [sqlite repository](https://github.com/totalpaveinc/sqlite).
