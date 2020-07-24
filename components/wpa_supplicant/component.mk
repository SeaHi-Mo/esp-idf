COMPONENT_ADD_INCLUDEDIRS := include port/include include/esp_supplicant src/utils
COMPONENT_PRIV_INCLUDEDIRS := src
COMPONENT_SRCDIRS := port src/ap src/common src/crypto src/eap_peer src/rsn_supp src/tls src/utils src/esp_supplicant src/wps

ifneq ($(CONFIG_WPA_11KV_SUPPORT), y)
    COMPONENT_OBJEXCLUDE += src/common/rrm.o \
    src/common/wnm_sta.o \
    src/common/bss.o \
    src/common/scan.o \
    src/common/ieee802_11_common.o \
    src/esp_supplicant/esp_common.o \
    src/esp_supplicant/esp_scan.o
endif

CFLAGS += -DCONFIG_WNM -DCONFIG_WPA3_SAE -DCONFIG_IEEE80211W -DESP_SUPPLICANT -DIEEE8021X_EAPOL -DEAP_PEER_METHOD -DEAP_TLS -DEAP_TTLS -DEAP_PEAP -DEAP_MSCHAPv2 -DUSE_WPA2_TASK -DCONFIG_WPS2 -DCONFIG_WPS_PIN -DUSE_WPS_TASK -DESPRESSIF_USE -DESP32_WORKAROUND -DCONFIG_ECC -D__ets__ -Wno-strict-aliasing
