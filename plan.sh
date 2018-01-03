pkg_name=imagemagick
pkg_origin=goblin23
pkg_version=7.0.7-19
pkg_description="A software suite to create, edit, compose, or convert bitmap images."
pkg_upstream_url="http://imagemagick.org/"
pkg_license=('Apache2')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source=http://www.imagemagick.org/download/releases/ImageMagick-${pkg_version}.tar.xz
pkg_shasum=5f1156824c37e5dde6ec37c5b1c51d9806f6d0e97aeaeb1e6907d7aba15951d9
pkg_deps=(core/libjpeg-turbo core/glibc core/zlib core/libpng core/xz core/gcc-libs)
pkg_build_deps=(core/zlib core/coreutils core/diffutils core/patch core/make core/gcc core/sed core/glibc core/pkg-config)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include/ImageMagick-6)
pkg_lib_dirs=(lib)
pkg_dirname=ImageMagick-${pkg_version}

do_build() {
    CC="gcc -std=gnu99" ./configure --prefix=$pkg_prefix
    make
}
