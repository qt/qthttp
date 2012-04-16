TEMPLATE = subdirs

module_qthttp_src.subdir = src
module_qthttp_src.target = sub-src

#There are no examples
#module_qthttp_examples.subdir = examples
#module_qthttp_examples.target = sub-examples
#module_qthttp_examples.depends = module_qthttp_src
#!contains(QT_BUILD_PARTS,examples) {
#    module_qthttp_examples.CONFIG += no_default_install no_default_target
#}

module_qthttp_tests.subdir = tests
module_qthttp_tests.target = sub-tests
module_qthttp_tests.depends = module_qthttp_src
module_qthttp_tests.CONFIG = no_default_install
!contains(QT_BUILD_PARTS,tests):module_qthttp_tests.CONFIG += no_default_target

SUBDIRS += module_qthttp_src \
#           module_qthttp_examples \
           module_qthttp_tests \

