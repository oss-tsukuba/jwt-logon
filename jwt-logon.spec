Name: jwt-logon
Version: 1.1.0
Release: 1%{?dist}
Summary: Assitant Program for jwt-server
License: BSD
Source0: %{name}-%{version}.tar.gz
Requires: curl

Provides: %{name} = %{version}

%description
Assist for JWT-SERVER

%global debug_package %{nil}

%prep
%setup -q

%build

%install
rm -rf $RPM_BUILD_ROOT
make DESTDIR=${RPM_BUILD_ROOT} BINDIR=%{_bindir} install

%clean
rm -rf $RPM_BUILD_ROOT

%files
%{_bindir}/jwt-logon
%{_bindir}/jwt-change-passphrase

%changelog
* Mon Aug 29 2022 Atsushi Kumazaki <kuma@canaly.co.jp> 1.0.0-1
- Initial build.
