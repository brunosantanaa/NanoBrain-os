include $(TOPDIR)/rules.mk

PKG_NAME:=nanobrain-os
PKG_VERSION:=0.1.0
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/nanobrain-os
	SECTION:=base
	CATEGORY:=NanoBrain
	TITLE:=Files for the NanoBrain OS
endef

define Package/nanobrain-os/install
	$(INSTALL_DIR) $(1)/etc/ $(1)/etc/config/
	$(CP) -r ./files/config/* $(1)/etc/config/
	$(CP) ./files/hosts $(1)/etc/
endef

# calls to build each package
$(eval $(call BuildPackage,nanobrain-os))