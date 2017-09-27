.class public Lcom/android/server/enterprise/otp/OTPService;
.super Lcom/samsung/android/knox/otp/IOTPService$Stub;
.source "OTPService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static OTP_CURRENT_VERSION:Ljava/lang/String; = null

.field private static final OTP_VERSION_1_1_1:Ljava/lang/String; = "1.1.1"

.field private static final OTP_VERSION_1_2_0:Ljava/lang/String; = "1.2.0"

.field public static final OTP_VERSION_2_6_0:Ljava/lang/String; = "2.6.0"

.field private static final SYSTEM_PROP_OTP:Ljava/lang/String; = "sys.enterprise.otp.version"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "1.1.1"

    sput-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/knox/otp/IOTPService$Stub;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OTPService::Constructor: ENTER ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/OTPService;->otpLoadServer()I

    .line 62
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setupIntentFilter()V

    .line 58
    return-void
.end method

.method private checkOTPVersion(Ljava/lang/String;)Z
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 612
    sget-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_0
    return v1
.end method

.method private handleDBUpgrade()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 731
    return-void
.end method

.method private setOtpVersion()V
    .locals 3

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOtpVersion OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const-string/jumbo v0, "2.6.0"

    sput-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOtpVersion setting OTP_CURRENT_VERSION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v0, "sys.enterprise.otp.version"

    sget-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOtpVersion SystemProperties.get(SYSTEM_PROP_OTP): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 649
    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 624
    :cond_0
    return-void
.end method

.method private setupIntentFilter()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 719
    const-string/jumbo v0, "OTPService:: setup intent filter is called"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 720
    new-instance v1, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;-><init>()V

    .line 721
    .local v1, "receiver":Lcom/android/server/enterprise/otp/PackageRemovalReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 722
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 725
    new-instance v6, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;-><init>()V

    .line 726
    .local v6, "timeChangeReceiver":Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    .local v8, "timeChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    iget-object v5, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 718
    return-void
.end method


# virtual methods
.method public createOtpToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .param p1, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 67
    const-string/jumbo v6, "OTPService::createOtpToken: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string/jumbo v6, "OTPService::createOtpToken: Invalid input."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 72
    return-object v7

    .line 74
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    const-string/jumbo v6, "OTPService::createOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 77
    return-object v7

    .line 81
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "vendorTokenId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 87
    const-string/jumbo v7, "OTP_TOKEN_ID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static {v6, v7}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    const-string/jumbo v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 91
    :cond_2
    const-string/jumbo v6, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x152

    if-ne v6, v7, :cond_3

    .line 92
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    if-nez v6, :cond_5

    .line 93
    const-string/jumbo v6, "SECRET_ENCRYPTION_ALGO"

    const/16 v7, 0x186

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    :cond_3
    const-string/jumbo v6, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, "type":I
    const/16 v6, 0x120

    if-ne v4, v6, :cond_6

    .line 101
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 108
    :cond_4
    :goto_0
    if-eqz v3, :cond_9

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "internalTokenId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 110
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 113
    .local v1, "containerId":I
    const-string/jumbo v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "vendorTokenId":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 115
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x400

    if-le v6, v7, :cond_7

    .line 116
    const-string/jumbo v6, "OTPService::createOtpToken: The max allowed sixe of Token ID is exceeded"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 118
    const/16 v7, 0x410

    .line 117
    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 119
    return-object v5

    .line 95
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v2    # "internalTokenId":Ljava/lang/String;
    .end local v4    # "type":I
    .restart local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    .local v5, "vendorTokenId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 102
    .restart local v4    # "type":I
    :cond_6
    const/16 v6, 0x121

    if-ne v4, v6, :cond_4

    .line 103
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;-><init>(Landroid/content/Context;)V

    .local v3, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    goto :goto_0

    .line 121
    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    .local v5, "vendorTokenId":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    .line 122
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .end local v2    # "internalTokenId":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_a

    .line 126
    invoke-interface {v3, p1}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doProvision(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v5    # "vendorTokenId":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::createOtpToken: EXIT ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 137
    return-object v5

    .line 128
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v5    # "vendorTokenId":Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::createOtpToken: token already exist with tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 129
    const-string/jumbo v7, " for calling pkg"

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 131
    const/16 v7, 0x403

    .line 130
    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 132
    return-object v5
.end method

.method public generateOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;
    .param p4, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::generateOtp ENTER [tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 288
    .local v3, "otp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, "internalTokenId":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    const-string/jumbo v6, "OTPService::generateOtp: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 293
    const/4 v6, 0x0

    return-object v6

    .line 296
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    move-result v6

    if-nez v6, :cond_2

    .line 297
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 298
    const-string/jumbo v7, "Token is corrupted. Delete the token and try creating it"

    .line 297
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v2    # "internalTokenId":Ljava/lang/String;
    .end local v3    # "otp":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 345
    if-eqz v2, :cond_1

    .line 346
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    .line 347
    iget-object v7, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 348
    if-nez v3, :cond_a

    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x1

    .line 346
    invoke-virtual {v8, v9, v2, v10, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 343
    :cond_1
    throw v6

    .line 301
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    .restart local v3    # "otp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "internalTokenId":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 305
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 309
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::generateOtp - verifyCall return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 312
    if-eqz v4, :cond_4

    .line 313
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 316
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/samsung/android/knox/otp/OTPToken;

    move-result-object v5

    .line 317
    .local v5, "token":Lcom/samsung/android/knox/otp/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-eqz v5, :cond_5

    .line 320
    invoke-virtual {v5}, Lcom/samsung/android/knox/otp/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 321
    .local v0, "algo_type":I
    const-string/jumbo v6, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const/16 v6, 0x102

    if-ne v0, v6, :cond_5

    .line 324
    const-string/jumbo v6, "OTP_PARAM"

    invoke-virtual {v5}, Lcom/samsung/android/knox/otp/OTPToken;->getTimeStep()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string/jumbo v6, "OCRA_PIN"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v6, "OCRA_SESSION"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v6, "OCRA_CHALLENGE"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v6, "SDK_VERSION_DEFINED"

    const-string/jumbo v7, "1.0.0"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "algo_type":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::generateOtp - isGnerateOtpInputValid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 335
    if-eqz v4, :cond_6

    .line 336
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 339
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "otp":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 342
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 345
    :cond_7
    if-eqz v2, :cond_8

    .line 346
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v7

    .line 347
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 348
    if-nez v3, :cond_9

    const/4 v6, 0x0

    :goto_1
    const/4 v9, 0x1

    .line 346
    invoke-virtual {v7, v8, v2, v9, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 352
    :cond_8
    return-object v3

    .line 348
    :cond_9
    const/4 v6, 0x1

    goto :goto_1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "internalTokenId":Ljava/lang/String;
    .end local v3    # "otp":Ljava/lang/String;
    .end local v5    # "token":Lcom/samsung/android/knox/otp/OTPToken;
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public generateOtpEx(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpGenerateData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OTPService::generateOtpEx Enter - token Id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "ret":I
    const/4 v4, 0x0

    .line 361
    .local v4, "otp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 365
    .local v3, "internalTokenId":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 366
    const-string/jumbo v9, "OTPService::generateOtpEx: Skip operation. DB Upgrade active."

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 367
    return-object v11

    .line 370
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    move-result v9

    if-nez v9, :cond_2

    .line 371
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 372
    const-string/jumbo v10, "Token is corrupted. Delete the token and try creating it"

    .line 371
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .end local v3    # "internalTokenId":Ljava/lang/String;
    .end local v4    # "otp":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 440
    if-eqz v3, :cond_1

    .line 441
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    .line 442
    iget-object v11, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 443
    if-nez v4, :cond_c

    .line 441
    :goto_0
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 438
    :cond_1
    throw v9

    .line 375
    .restart local v3    # "internalTokenId":Ljava/lang/String;
    .restart local v4    # "otp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "internalTokenId":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OTPService::generateOtpEx: Token doesn\'t exist for given vendor TokenId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 379
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 383
    :cond_3
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OTPService::generateOtpEx - verifyCall return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 386
    if-eqz v5, :cond_4

    .line 387
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 390
    :cond_4
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/samsung/android/knox/otp/OTPToken;

    move-result-object v6

    .line 391
    .local v6, "token":Lcom/samsung/android/knox/otp/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-eqz v6, :cond_6

    .line 394
    invoke-virtual {v6}, Lcom/samsung/android/knox/otp/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 395
    .local v0, "algo_type":I
    const-string/jumbo v9, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const/16 v9, 0x102

    if-ne v0, v9, :cond_6

    .line 398
    if-nez p2, :cond_5

    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OTPService::generateOtpEx - input bundle is null for OCRA return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 401
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 402
    const-string/jumbo v10, "Bundle passed is null for OCRA. Please pass a proper bundle"

    .line 401
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 404
    :cond_5
    const-string/jumbo v9, "OTP_PARAM"

    invoke-virtual {v6}, Lcom/samsung/android/knox/otp/OTPToken;->getTimeStep()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string/jumbo v9, "OCRA_PIN"

    .line 406
    const-string/jumbo v10, "OCRA_STRING_PIN"

    const/4 v11, 0x0

    .line 405
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v9, "OCRA_SESSION"

    .line 408
    const-string/jumbo v10, "OCRA_STRING_SESSION"

    const/4 v11, 0x0

    .line 407
    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    .line 413
    .local v2, "challenge":Ljava/lang/String;
    const-string/jumbo v9, "OCRA_HEXSTRING_CHALLENGE"

    .line 412
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "challenge":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 414
    const-string/jumbo v9, "OCRA_CHALLENGE"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_1
    const-string/jumbo v9, "SDK_VERSION_DEFINED"

    .line 423
    sget-object v10, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v0    # "algo_type":I
    .end local v2    # "challenge":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v5

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OTPService::generateOtpEx - isGnerateOtpInputValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 431
    if-eqz v5, :cond_7

    .line 432
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 435
    :cond_7
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "otp":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 437
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 440
    :cond_8
    if-eqz v3, :cond_9

    .line 441
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v9

    .line 442
    iget-object v10, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 443
    if-nez v4, :cond_b

    .line 441
    :goto_2
    invoke-virtual {v9, v10, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 447
    :cond_9
    return-object v4

    .line 417
    .restart local v0    # "algo_type":I
    .restart local v2    # "challenge":Ljava/lang/String;
    .local v4, "otp":Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string/jumbo v9, "OCRA_CHALLENGE"

    .line 419
    const-string/jumbo v10, "OCRA_BYTEARRAY_CHALLENGE"

    .line 418
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "algo_type":I
    .end local v2    # "challenge":Ljava/lang/String;
    .local v4, "otp":Ljava/lang/String;
    :cond_b
    move v7, v8

    .line 443
    goto :goto_2

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "internalTokenId":Ljava/lang/String;
    .end local v4    # "otp":Ljava/lang/String;
    .end local v6    # "token":Lcom/samsung/android/knox/otp/OTPToken;
    :cond_c
    move v7, v8

    goto/16 :goto_0
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 6
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "keyParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 488
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 489
    :cond_0
    const-string/jumbo v2, "OTPService::getDerivedKey: Invalid input."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 490
    return-object v4

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    const-string/jumbo v2, "OTPService::getDerivedKey: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 493
    return-object v4

    .line 495
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::getDerivedKey Enter [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::getDerivedKey Enter [keyParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 501
    return-object v4

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    .line 505
    const-string/jumbo v3, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 504
    invoke-static {v2, v0, v5, v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 506
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 507
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v2

    return-object v2

    .line 509
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::getDerivedKey - caller verification failed [Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 510
    const-string/jumbo v3, "]"

    .line 509
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 511
    return-object v4
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .locals 5
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 462
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 463
    :cond_0
    const-string/jumbo v2, "OTPService::getHmac: Invalid input."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 464
    return-object v4

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const-string/jumbo v2, "OTPService::getHmac: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 467
    return-object v4

    .line 469
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::getHmac Enter [type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 475
    return-object v4

    .line 477
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 478
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getHmac(Ljava/lang/String;I[B)[B

    move-result-object v2

    return-object v2

    .line 481
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::getHmac - caller verification failed [Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 482
    return-object v4
.end method

.method public getOtpCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x40e

    .line 234
    const-string/jumbo v1, "OTPService::getOtpCertificate Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string/jumbo v1, "OTPService::getOtpCertificate: Skip operation. DB Upgrade active."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 238
    return-object v3

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 244
    const-string/jumbo v1, "1.2.0"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/otp/OTPService;->checkOTPVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    .line 249
    .local v0, "otpCert":[B
    if-nez v0, :cond_2

    .line 250
    const-string/jumbo v1, "OTPService::getOtpCertificate returned null : Throwing UnsupportedOperationException"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 251
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 253
    :cond_2
    return-object v0
.end method

.method public getOtpSDKVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OTPService::getOtpSDKVersion | Enter [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "otpVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OTPService::getOtpSDKVersion | SystemProperties [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 455
    return-object v0
.end method

.method public getOtpTokenList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/otp/OTPToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    const-string/jumbo v4, "OTPService::getOtpTokenList Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string/jumbo v4, "OTPService::getOtpTokenList: Skip operation. DB Upgrade active."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 262
    const/4 v4, 0x0

    return-object v4

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/otp/OTPToken;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v2, v4, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 270
    .local v2, "containerId":I
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "callerPkgSign":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 276
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/otp/OTPToken;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OTPService::getOtpTokenList: EXIT [Package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, ", Container Id "

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, "]"

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, "[Tokens Found "

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, "]"

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 278
    return-object v3
.end method

.method public getSupportedDSKPPVariant()I
    .locals 2

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVariant(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getSupportedDSKPPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVersion(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()[I
    .locals 2

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedEncryptionAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyPackages()[I
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyProtectionMethods()[I
    .locals 2

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMacAlgorithms()[I
    .locals 2

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedMacAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public keyProvClientHello(Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;)Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;
    .locals 3
    .param p1, "trigger"    # Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 521
    const-string/jumbo v1, "OTPService::keyProvisionClientHello Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 523
    if-nez p1, :cond_0

    .line 524
    const-string/jumbo v1, "OTPService::keyProvisionClientHello: Skip operation. DSKPP Key Provision Trigger data is null."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 525
    return-object v2

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    const-string/jumbo v1, "OTPService::keyProvisionClientHello: Skip operation. DB Upgrade active."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 530
    return-object v2

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 537
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    const/16 v1, 0x412

    .line 538
    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 542
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvClientHello(Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;)Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;

    move-result-object v1

    return-object v1
.end method

.method public keyProvServerFinished(Lcom/samsung/android/knox/otp/DSKPPKeyProvServerFinish;)Lcom/samsung/android/knox/otp/DSKPPStatus;
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/knox/otp/DSKPPKeyProvServerFinish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 550
    const-string/jumbo v3, "OTPService::setKeyProvServerFinished Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 553
    if-nez p1, :cond_0

    .line 554
    const-string/jumbo v3, "OTPService::keyProvServerFinished: Skip operation. DSKPP Key Provision Server Finished data is null."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 555
    return-object v4

    .line 559
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    const-string/jumbo v3, "OTPService::setKeyProvServerFinished: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 561
    return-object v4

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 568
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    const/16 v3, 0x412

    .line 569
    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 573
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 574
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    new-instance v1, Lcom/samsung/android/knox/otp/DSKPPStatus;

    invoke-direct {v1}, Lcom/samsung/android/knox/otp/DSKPPStatus;-><init>()V

    .line 575
    .local v1, "status":Lcom/samsung/android/knox/otp/DSKPPStatus;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvisionServerFinish(Lcom/samsung/android/knox/otp/DSKPPKeyProvServerFinish;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "tokenId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 577
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/otp/DSKPPStatus;->setStatusCode(I)V

    .line 578
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/otp/DSKPPStatus;->setTokenId(Ljava/lang/String;)V

    .line 581
    :goto_0
    return-object v1

    .line 580
    :cond_3
    const/16 v3, 0x4ff

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/otp/DSKPPStatus;->setStatusCode(I)V

    goto :goto_0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 756
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OTPService:: OTP service is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OTPService:: Failure add service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OTPService::onAdminAdded | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 684
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved | Enter [uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 685
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    .line 686
    .local v0, "dbHandler":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 687
    .local v5, "userId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved | user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 689
    if-nez v5, :cond_0

    .line 690
    const-string/jumbo v6, "OTPService::onAdminRemoved Ignoring call for containerId 0"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 691
    return-void

    .line 694
    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokensInContainer(I)Ljava/util/List;

    move-result-object v1

    .line 695
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 696
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "token$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 697
    .local v3, "token":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v2

    .line 698
    .local v2, "ret":I
    if-nez v2, :cond_1

    .line 699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 704
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v2

    .line 705
    if-nez v2, :cond_2

    .line 706
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 707
    const-string/jumbo v7, " in OTP DB"

    .line 706
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 702
    const-string/jumbo v7, " in TZ"

    .line 701
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 709
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    .end local v2    # "ret":I
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "token$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v6, "OTPService::onAdminRemoved No OTP Tokens for removed container/vendor"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 683
    :cond_4
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OTPService::onPreAdminRemoval | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public declared-synchronized otpLoadServer()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 738
    :try_start_0
    const-string/jumbo v1, "OTPService::otpLoadServer Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 741
    const-string/jumbo v1, "OTP"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 742
    .local v0, "otpBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v1, "OTPService:: otp_server already loaded"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 744
    return v3

    .line 749
    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.security.tlc.otp"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string/jumbo v1, "OTPService:: Start otp_server for OTP done : setprop"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 751
    return v3

    .end local v0    # "otpBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeOtpToken(Ljava/lang/String;)I
    .locals 4
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::removeOtpToken: ENTER [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string/jumbo v2, "OTPService::removeOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 202
    const/16 v2, 0x4ff

    return v2

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    .line 207
    const/4 v1, 0x0

    .line 210
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 220
    :goto_0
    const/16 v2, 0x40d

    if-ne v2, v1, :cond_1

    .line 221
    const/4 v1, 0x0

    .line 223
    :cond_1
    if-nez v1, :cond_2

    .line 224
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::removeOtpToken: TlcHandler deleteToken [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v1

    .line 228
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::removeOtpToken: EXIT [result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 229
    return v1

    .line 214
    :cond_3
    const/16 v1, 0x408

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTPService::removeOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resyncOtpToken(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OTPService::resyncOtpToken: ENTER [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    const-string/jumbo v3, "OTPService::resyncOtpToken: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 147
    const/16 v3, 0x401

    return v3

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const-string/jumbo v3, "OTPService::resyncOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 152
    const/16 v3, 0x4ff

    return v3

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->verifyDbIntegrity()Z

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 171
    :goto_0
    const-string/jumbo v3, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x152

    if-ne v3, v4, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    .line 173
    if-nez v2, :cond_2

    .line 174
    const-string/jumbo v3, "SECRET_ENCRYPTION_ALGO"

    .line 175
    const/16 v4, 0x186

    .line 174
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    :cond_2
    if-nez v2, :cond_3

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    const-string/jumbo v3, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x120

    if-ne v3, v4, :cond_5

    .line 182
    new-instance v1, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 189
    :goto_1
    if-eqz v1, :cond_3

    .line 190
    invoke-interface {v1, v0, p2}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doResync(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 192
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OTPService::resyncOtpToken: EXIT [result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 193
    return v2

    .line 165
    :cond_4
    const/16 v2, 0x408

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OTPService::resyncOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .restart local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OTPService::resyncOtpToken: Not Supported for Provisioning Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 185
    const-string/jumbo v4, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 186
    const/16 v2, 0x404

    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 657
    const-string/jumbo v0, "OTPService::systemReady | Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 659
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setOtpVersion()V

    .line 661
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string/jumbo v0, "sys.enterprise.otp.version"

    sget-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady SystemProperties.get(SYSTEM_PROP_OTP, null): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 665
    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->handleDBUpgrade()V

    .line 656
    :cond_0
    return-void
.end method
