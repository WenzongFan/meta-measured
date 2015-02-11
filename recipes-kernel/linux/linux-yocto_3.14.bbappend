FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Enable kernel support if the feature is available on the machine.
SRC_URI += " \
    ${@base_contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
    ${@base_contains('MACHINE_FEATURES', 'tpm', 'file://tpm.cfg', '', d)} \    
    ${@base_contains('MACHINE_FEATURES', 'txt', 'file://txt.scc', '', d)} \
    ${@base_contains('MACHINE_FEATURES', 'txt', 'file://txt.cfg', '', d)} \
"

COMPATIBLE_MACHINE_nuc-vpro = "nuc-vpro"
COMPATIBLE_MACHINE_intel-corei7-64-vpro = "intel-corei7-64-vpro"

