include(../qxmpp.pri)

QT -= gui

TEMPLATE = lib

CONFIG += staticlib
INCLUDEPATH += $$QXMPP_INCLUDEPATH $$QXMPP_INTERNAL_INCLUDES
LIBS += $$QXMPP_INTERNAL_LIBS

# To enable support for the Speex audio codec, uncomment the following:
# DEFINES += QXMPP_USE_SPEEX
# LIBS += -lspeex

# To enable support for the Theora video codec, uncomment the following:
# DEFINES += QXMPP_USE_THEORA
# LIBS += -ltheoradec -ltheoraenc

# To enable support for the Vpx video codec, uncomment the following:
# DEFINES += QXMPP_USE_VPX
# LIBS += -lvpx

# Target definition
TARGET = $$QXMPP_LIBRARY_NAME
VERSION = $$QXMPP_VERSION
DESTDIR = $$QXMPP_LIBRARY_DIR

# Header files
INSTALL_HEADERS = QXmppUtils.h \
    QXmppArchiveIq.h \
    client/QXmppArchiveManager.h \
    QXmppBindIq.h \
    client/QXmppBookmarkManager.h \
    QXmppBookmarkSet.h \
    QXmppByteStreamIq.h \
    client/QXmppCallManager.h \
    client/QXmppClient.h \
    client/QXmppClientExtension.h \
    QXmppCodec.h \
    client/QXmppConfiguration.h \
    QXmppConstants.h \
    QXmppDataForm.h \
    QXmppDiscoveryIq.h \
    client/QXmppDiscoveryManager.h \
    QXmppElement.h \
    QXmppEntityTimeIq.h \
    client/QXmppEntityTimeManager.h \
    QXmppGlobal.h \
    QXmppIbbIq.h \
    QXmppInvokable.h \
    QXmppIq.h \
    QXmppJingleIq.h \
    QXmppLogger.h \
    QXmppMessage.h \
    client/QXmppMessageReceiptManager.h \
    QXmppMucIq.h \
    client/QXmppMucManager.h \
    QXmppNonSASLAuth.h \
    client/QXmppOutgoingClient.h \
    QXmppPacket.h \
    QXmppPingIq.h \
    QXmppPresence.h \
    QXmppPubSubIq.h \
    client/QXmppReconnectionManager.h \
    client/QXmppRemoteMethod.h \
    QXmppRosterIq.h \
    client/QXmppRosterManager.h \
    QXmppRpcIq.h \
    client/QXmppRpcManager.h \
    QXmppRtpChannel.h \
    QXmppSaslAuth.h \
    QXmppSessionIq.h \
    QXmppSocks.h \
    QXmppStanza.h \
    QXmppStream.h \
    QXmppStreamFeatures.h \
    QXmppStreamInitiationIq.h \
    QXmppStun.h \
    client/QXmppTransferManager.h \
    client/QXmppVCardManager.h \
    QXmppVCardIq.h \
    QXmppVersionIq.h \
    client/QXmppVersionManager.h \
    server/QXmppDialback.h \
    server/QXmppIncomingClient.h \
    server/QXmppIncomingServer.h \
    server/QXmppOutgoingServer.h \
    server/QXmppPasswordChecker.h \
    server/QXmppServer.h \
    server/QXmppServerExtension.h \
    server/QXmppServerPlugin.h

HEADERS += $$INSTALL_HEADERS

# Source files
SOURCES += QXmppUtils.cpp \
    QXmppArchiveIq.cpp \
    client/QXmppArchiveManager.cpp \
    QXmppBindIq.cpp \
    client/QXmppBookmarkManager.cpp \
    QXmppBookmarkSet.cpp \
    QXmppByteStreamIq.cpp \
    client/QXmppCallManager.cpp \
    client/QXmppClient.cpp \
    client/QXmppClientExtension.cpp \
    QXmppCodec.cpp \
    client/QXmppConfiguration.cpp \
    QXmppConstants.cpp \
    QXmppDataForm.cpp \
    QXmppDiscoveryIq.cpp \
    client/QXmppDiscoveryManager.cpp \
    QXmppElement.cpp \
    QXmppEntityTimeIq.cpp \
    client/QXmppEntityTimeManager.cpp \
    QXmppGlobal.cpp \
    QXmppIbbIq.cpp \
    QXmppInvokable.cpp \
    QXmppIq.cpp \
    QXmppJingleIq.cpp \
    QXmppLogger.cpp \
    QXmppMessage.cpp \
    client/QXmppMessageReceiptManager.cpp \
    QXmppMucIq.cpp \
    client/QXmppMucManager.cpp \
    QXmppNonSASLAuth.cpp \
    client/QXmppOutgoingClient.cpp \
    QXmppPacket.cpp \
    QXmppPingIq.cpp \
    QXmppPresence.cpp \
    QXmppPubSubIq.cpp \
    client/QXmppReconnectionManager.cpp \
    client/QXmppRemoteMethod.cpp \
    QXmppRosterIq.cpp \
    client/QXmppRosterManager.cpp \
    QXmppRpcIq.cpp \
    client/QXmppRpcManager.cpp \
    QXmppRtpChannel.cpp \
    QXmppSaslAuth.cpp \
    QXmppSessionIq.cpp \
    QXmppSocks.cpp \
    QXmppStanza.cpp \
    QXmppStream.cpp \
    QXmppStreamFeatures.cpp \
    QXmppStreamInitiationIq.cpp \
    QXmppStun.cpp \
    client/QXmppTransferManager.cpp \
    client/QXmppVCardManager.cpp \
    QXmppVCardIq.cpp \
    QXmppVersionIq.cpp \
    client/QXmppVersionManager.cpp \
    server/QXmppDialback.cpp \
    server/QXmppIncomingClient.cpp \
    server/QXmppIncomingServer.cpp \
    server/QXmppOutgoingServer.cpp \
    server/QXmppPasswordChecker.cpp \
    server/QXmppServer.cpp \
    server/QXmppServerExtension.cpp

# DNS
HEADERS += qdnslookup.h qdnslookup_p.h
SOURCES += qdnslookup.cpp
android:SOURCES += qdnslookup_stub.cpp
else:symbian:SOURCES += qdnslookup_symbian.cpp
else:unix:SOURCES += qdnslookup_unix.cpp
else:win32:SOURCES += qdnslookup_win.cpp

# Plugins
DEFINES += QT_STATICPLUGIN
HEADERS += \
    server/mod_disco.h \
    server/mod_ping.h \
    server/mod_presence.h \
    server/mod_proxy65.h \
    server/mod_stats.h \
    server/mod_time.h \
    server/mod_version.h
SOURCES += \
    server/mod_disco.cpp \
    server/mod_ping.cpp \
    server/mod_presence.cpp \
    server/mod_proxy65.cpp \
    server/mod_stats.cpp \
    server/mod_time.cpp \
    server/mod_version.cpp

# Installation
headers.files = $$INSTALL_HEADERS
headers.path = $$PREFIX/include/qxmpp
target.path = $$PREFIX/$$LIBDIR
INSTALLS += headers target

# pkg-config support
CONFIG += create_pc create_prl no_install_prl
QMAKE_PKGCONFIG_DESTDIR = $$QXMPP_LIBRARY_DIR/pkgconfig
QMAKE_PKGCONFIG_LIBDIR = $$target.path
QMAKE_PKGCONFIG_INCDIR = $$headers.path
