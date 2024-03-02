APP_ABI          := arm64-v8a
APP_OPTIM        := release
APP_PLATFORM     := android-21
APP_STL          := c++_static
APP_THIN_ARCHIVE := true
APP_PIE          := true

$(info APP_OPTIM is $(APP_OPTIM))

ifneq ($(APP_OPTIM), debug)
    APP_LDFLAGS += -Wl,--strip-all
    APP_CFLAGS  += -fvisibility=hidden -fvisibility-inlines-hidden
    APP_CFLAGS  += -g0 -O3 -fomit-frame-pointer -ffunction-sections -fdata-sections
    APP_CFLAGS  += -fdata-sections -ffunction-sections -fno-exceptions -fno-rtti
endif