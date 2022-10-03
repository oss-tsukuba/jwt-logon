Name: jwt-logon
Version: 1.0
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
install -Dpm 0755 jwt-logon %{buildroot}%{_bindir}/jwt-logon
install -Dpm 0755 jwt-change-passphrase %{buildroot}%{_bindir}/jwt-change-passphrase


%clean
rm -rf $RPM_BUILD_ROOT

%files
%{_bindir}/jwt-logon
%{_bindir}/jwt-change-passphrase


%changelog
* Mon Aug 29 2022 Atsushi Kumazaki <kuma@canaly.co.jp> 1.0-1
- Initial build.
