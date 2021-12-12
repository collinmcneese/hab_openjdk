pkg_origin=collinmcneese
pkg_maintainer="Collin McNeese <cmcneese@chef.io>"
pkg_name=openjdk17
pkg_version=17.0.1
pkg_source=https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_x64_linux_hotspot_17.0.1_12.tar.gz
pkg_shasum=6ea18c276dcbb8522feeebcfc3a4b5cb7c7e7368ba8590d3326c6c3efc5448b6
pkg_filename=jdk_x64_linux_hotspot_17.0.1_12.tar.gz
pkg_dirname="jdk-17.0.1+12"
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
