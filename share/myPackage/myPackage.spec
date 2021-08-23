Name: myPackage
Version: 1.0
Release: 1
License: GPL
Group: Utilities/System
Summary: package installing 2 other packages
Source0: nano-2.9.8-1.el8.x86_64.rpm
Source1: fortunes-ru-1.52-3.noarch.rpm
BuildRoot: %{_tnppatch}/myPackage-root

%description
This packege install 2 other packages

%setup -q -n %{name}-%{version}

%install
mkdir -p $RPM_BUILD_ROOT/usr/local/{bin,lib,share}

%post
rpm -i nano-2.9.8-1.el8.x86_64.rpm
rpm -i fortunes-ru-1.52-3.noarch.rpm
