pkg_origin=collinmcneese
pkg_maintainer="Collin McNeese <cmcneese@chef.io>"
pkg_name=openjdk11
pkg_version=11.0.12
pkg_source=https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
pkg_shasum=8770f600fc3b89bf331213c7aa21f8eedd9ca5d96036d1cd48cb2748a3dbefd2
pkg_filename=OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
pkg_dirname="jdk-11.0.12+7"
pkg_license=("GPL-2.0-only")
pkg_description=('Adoptium Temurin OpenJDK Binaries.  Based on upstream core/openjdk11 package.')
pkg_upstream_url=https://adoptium.net/
pkg_build_deps=(core/bash core/tar)
pkg_bin_dirs=(bin)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)

pkg_svc_user=("root")
pkg_svc_run="return 0"

do_unpack() {
  cd ${HAB_CACHE_SRC_PATH}
  tar -xf ${pkg_filename}
  pwd
  ls
}

do_build() {
  return 0
}

do_install() {
  cp -R -f ${HAB_CACHE_SRC_PATH}/${pkg_dirname}/* ${pkg_prefix}/
}
