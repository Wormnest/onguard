TurboPower OnGuard


Table of contents

1.  Introduction
2.  Package names
3.  Installation
4.  Version history
4.1   Release 1.13

==============================================


1. Introduction


OnGuard is a library to create demo versions of your Borland Delphi &
C++Builder applications. Ccreate demo versions that are time-limited,
feature-limited, limited to a certain number of uses, or limited to a
certain # of concurrent network users.

This is a source-only release of TurboPower OnGuard. It includes
designtime and runtime packages for Delphi 3 through 7 and C++Builder
3 through 6.

==============================================

2. Package names


TurboPower OnGuard package names have the following form:

  GNNN_KVV.*
   |   ||
   |   |+------ VV  VCL version (30=Delphi 3, 40=Delphi 4, 70=Delphi 7)
   |   +------- K   Kind of package (R=runtime, D=designtime)
   |
   +----------- NNN Product version number (e.g., 113=version 1.13)


For example, the OnGuard designtime package files for Delphi 7 have
the filename G113_D70.*.

==============================================

3. Installation


To install TurboPower OnGuard into your IDE, take the following steps:

  1. Unzip the release files into a directory (e.g., d:\onguard).

  2. Start Delphi or C++Builder.

  3. Add the source subdirectory (e.g., d:\onguard\source) to the
     IDE's library path.

  4. Open & install the designtime package specific to the IDE being
     used. The IDE should notify you the components have been
     installed.

  5. Make sure the PATH environmental variable contains the directory
     in which the compiled packages (i.e., BPL or DPL files) were
     placed.

==============================================

4. Version history


4.1 Release 1.13

    Enhancements
    -------------------------------------------------------------
    Added support for Delphi 7
