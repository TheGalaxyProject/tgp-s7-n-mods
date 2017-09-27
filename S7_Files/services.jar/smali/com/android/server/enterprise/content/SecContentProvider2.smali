.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 131
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 92
    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3705
    const/4 v0, 0x0

    .line 3706
    .local v0, "callerName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 3707
    .local v1, "mPackageManagerService":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_0

    .line 3708
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3710
    .end local v0    # "callerName":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "fail to get caller name."

    :cond_1
    return-object v0
.end method

.method private getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    .line 3735
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 3737
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3716
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3722
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 3667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3672
    .local v1, "callingUid":I
    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3700
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 3674
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3678
    :pswitch_2
    const-string/jumbo v3, "eas_account_policy"

    .line 3677
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 3679
    .local v2, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v2, :cond_0

    .line 3680
    const-string/jumbo v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3681
    .local v0, "api":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3682
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    goto :goto_0

    .line 3688
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3689
    const-string/jumbo v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3694
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3695
    const-string/jumbo v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3672
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 88
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 163
    .local v17, "callingUid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v82

    .line 166
    .local v82, "userId":I
    const/16 v36, 0x0

    .line 171
    .local v36, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    const/16 v51, 0x0

    .line 172
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/16 v16, 0x0

    .line 174
    .local v16, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "called from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3661
    .end local v36    # "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    return-object v5

    .line 186
    .restart local v36    # "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    :pswitch_1
    const-string/jumbo v5, "phone_restriction_policy"

    .line 185
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 187
    .local v47, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-eqz v47, :cond_0

    .line 188
    const-string/jumbo v5, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 191
    .local v70, "result":Z
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 194
    const-string/jumbo v6, "isCopyContactToSimAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 193
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 196
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 197
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 196
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 422
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .end local v70    # "result":Z
    :goto_1
    return-object v51

    .line 188
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_1
    const-string/jumbo v5, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 205
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 206
    const-string/jumbo v6, "isBlockSmsWithStorageEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 205
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 209
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 208
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2
    const-string/jumbo v5, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    const/4 v13, 0x0

    .line 215
    .local v13, "arg":Z
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 216
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 218
    .end local v13    # "arg":Z
    :cond_3
    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v70

    .line 221
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 222
    const-string/jumbo v6, "checkEnableUseOfPacketData"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 221
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 224
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 225
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 224
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_4
    const-string/jumbo v5, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 230
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 233
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 234
    const-string/jumbo v6, "isBlockMmsWithStorageEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 233
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 236
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 237
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 236
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5
    const-string/jumbo v5, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 242
    if-eqz p4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_18

    .line 243
    :cond_6
    const/4 v5, 0x0

    return-object v5

    .line 188
    :cond_7
    const-string/jumbo v5, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 257
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 260
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 261
    const-string/jumbo v6, "isLimitNumberOfSmsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 260
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 263
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 264
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 263
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_8
    const-string/jumbo v5, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 269
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 273
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 274
    const-string/jumbo v6, "isOutgoingSmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 273
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 276
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 277
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 276
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_9
    const-string/jumbo v5, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 282
    if-eqz p4, :cond_a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_19

    .line 283
    :cond_a
    const/4 v5, 0x0

    return-object v5

    .line 188
    :cond_b
    const-string/jumbo v5, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 290
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 293
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 294
    const-string/jumbo v6, "isIncomingMmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 293
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 296
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 297
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 296
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_c
    const-string/jumbo v5, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 302
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 305
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 306
    const-string/jumbo v6, "isIncomingSmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 305
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 308
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 309
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 308
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_d
    const-string/jumbo v5, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 314
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 317
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 318
    const-string/jumbo v6, "isOutgoingMmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 317
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 320
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 321
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 320
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e
    const-string/jumbo v5, "getEmergencyCallOnly"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 326
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 328
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 329
    const-string/jumbo v6, "getEmergencyCallOnly"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 328
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 331
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 332
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 331
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f
    const-string/jumbo v5, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 336
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 339
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 340
    const-string/jumbo v6, "isCallerIDDisplayAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 339
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 342
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 343
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 342
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10
    const-string/jumbo v5, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 348
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 351
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 352
    const-string/jumbo v6, "isWapPushAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 351
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 354
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 355
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 354
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_11
    const-string/jumbo v5, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 360
    if-eqz p4, :cond_12

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1a

    .line 361
    :cond_12
    const/4 v5, 0x0

    return-object v5

    .line 188
    :cond_13
    const-string/jumbo v5, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 375
    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b

    .line 376
    :cond_14
    const/4 v5, 0x0

    return-object v5

    .line 188
    :cond_15
    const-string/jumbo v5, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 389
    if-eqz p4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1c

    .line 390
    :cond_16
    const/4 v5, 0x0

    return-object v5

    .line 188
    :cond_17
    const-string/jumbo v5, "getDisclaimerText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 404
    const/16 v78, 0x0

    .line 405
    .local v78, "returnString":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v78

    .line 409
    .local v78, "returnString":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 410
    const-string/jumbo v6, "getDisclaimerText"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 409
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 412
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 413
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 412
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 245
    .end local v78    # "returnString":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_18
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v70

    .line 248
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 249
    const-string/jumbo v6, "canIncomingSms"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 248
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 251
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 252
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 251
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 285
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_19
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v70

    .restart local v70    # "result":Z
    goto/16 :goto_1

    .line 363
    .end local v70    # "result":Z
    :cond_1a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v70

    .line 366
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 367
    const-string/jumbo v6, "canIncomingCall"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 366
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 369
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 370
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 369
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 378
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_1b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v70

    .line 380
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 381
    const-string/jumbo v6, "canOutgoingCall"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 380
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 383
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 384
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 383
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 392
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_1c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v70

    .line 395
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 396
    const-string/jumbo v6, "isSimLockedByAdmin"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 395
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 398
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 399
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 398
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 418
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_1d
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v5, 0x0

    return-object v5

    .line 427
    .end local v47    # "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v36

    .line 428
    .local v36, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    if-eqz v36, :cond_49

    if-eqz p3, :cond_49

    .line 432
    const-string/jumbo v5, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 437
    if-eqz p4, :cond_1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_40

    .line 438
    :cond_1e
    if-eqz p4, :cond_1f

    .line 443
    :cond_1f
    const/4 v5, 0x0

    return-object v5

    .line 432
    :cond_20
    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 475
    const/16 v67, 0x0

    .line 478
    .local v67, "proKioskState":Z
    :try_start_0
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v67

    .line 485
    .end local v67    # "proKioskState":Z
    :goto_2
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 486
    const-string/jumbo v6, "getSealedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 485
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 488
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 489
    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 488
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1081
    :goto_3
    return-object v51

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_21
    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 497
    const/16 v76, 0x2

    .line 500
    .local v76, "returnState":I
    :try_start_1
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v76

    .line 507
    :goto_4
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 508
    const-string/jumbo v6, "getSealedPowerDialogOptionMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 507
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 510
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 511
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 510
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_22
    const-string/jumbo v5, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 519
    if-eqz p4, :cond_23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_41

    .line 520
    :cond_23
    if-eqz p4, :cond_24

    .line 525
    :cond_24
    const/4 v5, 0x0

    return-object v5

    .line 432
    :cond_25
    const-string/jumbo v5, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 553
    if-eqz p4, :cond_26

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_42

    .line 554
    :cond_26
    if-eqz p4, :cond_27

    .line 559
    :cond_27
    const/4 v5, 0x0

    return-object v5

    .line 432
    :cond_28
    const-string/jumbo v5, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 588
    const/16 v78, 0x0

    .line 591
    .local v78, "returnString":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v78

    .line 598
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_5
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 599
    const-string/jumbo v6, "getSealedHomeActivity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 598
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 601
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 602
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 601
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_29
    const-string/jumbo v5, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 610
    const/16 v76, 0x2

    .line 613
    .restart local v76    # "returnState":I
    :try_start_3
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v76

    .line 620
    :goto_6
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 621
    const-string/jumbo v6, "getSealedStatusBarMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 620
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 623
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 624
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 623
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2a
    const-string/jumbo v5, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 632
    const/16 v77, 0x1

    .line 635
    .local v77, "returnState":Z
    :try_start_4
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v77

    .line 642
    .end local v77    # "returnState":Z
    :goto_7
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 643
    const-string/jumbo v6, "getSealedStatusBarClockState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 642
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 645
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 646
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 645
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2b
    const-string/jumbo v5, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 654
    const/16 v77, 0x1

    .line 656
    .restart local v77    # "returnState":Z
    :try_start_5
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8

    move-result v77

    .line 663
    .end local v77    # "returnState":Z
    :goto_8
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 664
    const-string/jumbo v6, "getSealedStatusBarIconsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 663
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 666
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 667
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 666
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2c
    const-string/jumbo v5, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 675
    const/16 v77, 0x1

    .line 678
    .restart local v77    # "returnState":Z
    :try_start_6
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_9

    move-result v77

    .line 685
    .end local v77    # "returnState":Z
    :goto_9
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 686
    const-string/jumbo v6, "getSealedUsbMassStorageState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 685
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 688
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 689
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 688
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2d
    const-string/jumbo v5, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 697
    const/16 v77, 0x0

    .line 699
    .restart local v77    # "returnState":Z
    :try_start_7
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_a

    move-result v77

    .line 706
    .end local v77    # "returnState":Z
    :goto_a
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 707
    const-string/jumbo v6, "getSealedUsbNetState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 706
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 709
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 710
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 709
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_2e
    const-string/jumbo v5, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 718
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_43

    .line 719
    :cond_2f
    if-eqz p4, :cond_30

    .line 724
    :cond_30
    const/4 v5, 0x0

    return-object v5

    .line 432
    :cond_31
    const-string/jumbo v5, "getPowerSavingMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 752
    const/16 v76, 0x0

    .line 754
    .restart local v76    # "returnState":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ultra_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v79

    .line 755
    .local v79, "ultraSetting":I
    if-eqz v79, :cond_44

    .line 756
    const/16 v76, 0x2

    .line 774
    :goto_b
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 775
    const-string/jumbo v6, "getPowerSavingMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 774
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 777
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 778
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 777
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .end local v79    # "ultraSetting":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_32
    const-string/jumbo v5, "getChargingLEDState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v77, 0x1

    .line 793
    .restart local v77    # "returnState":Z
    :goto_c
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 794
    const-string/jumbo v6, "getChargingLEDState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 793
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 796
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 797
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 796
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v77    # "returnState":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_33
    const-string/jumbo v5, "getScreenWakeupOnPowerState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 805
    const/16 v77, 0x1

    .line 807
    .restart local v77    # "returnState":Z
    :try_start_8
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    move-result v77

    .line 814
    .end local v77    # "returnState":Z
    :goto_d
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 815
    const-string/jumbo v6, "getScreenWakeupOnPowerState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 814
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 817
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 818
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 817
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_34
    const-string/jumbo v5, "getLTESettingState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 826
    const/16 v77, 0x0

    .line 828
    .restart local v77    # "returnState":Z
    :try_start_9
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d

    move-result v77

    .line 835
    .end local v77    # "returnState":Z
    :goto_e
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 836
    const-string/jumbo v6, "getLTESettingState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 835
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 838
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 839
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 838
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_35
    const-string/jumbo v5, "getCallScreenDisabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 847
    const/16 v76, 0x0

    .line 850
    .restart local v76    # "returnState":I
    :try_start_a
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_e

    move-result v76

    .line 857
    :goto_f
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 858
    const-string/jumbo v6, "getCallScreenDisabledItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 857
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 860
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 861
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 860
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_36
    const-string/jumbo v5, "getInfraredState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 870
    const/16 v77, 0x1

    .line 872
    .restart local v77    # "returnState":Z
    :try_start_b
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_f

    move-result v77

    .line 879
    .end local v77    # "returnState":Z
    :goto_10
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 880
    const-string/jumbo v6, "getInfraredState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 879
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 882
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 883
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 882
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_37
    const-string/jumbo v5, "getSensorDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 891
    const/16 v76, 0x0

    .line 894
    .restart local v76    # "returnState":I
    :try_start_c
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_10

    move-result v76

    .line 901
    :goto_11
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 902
    const-string/jumbo v6, "getSensorDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 901
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 904
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 905
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 904
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_38
    const-string/jumbo v5, "getVolumePanelEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 913
    const/16 v77, 0x1

    .line 915
    .restart local v77    # "returnState":Z
    :try_start_d
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_11

    move-result v77

    .line 922
    .end local v77    # "returnState":Z
    :goto_12
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 923
    const-string/jumbo v6, "getVolumePanelEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 922
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 925
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 926
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 925
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_39
    const-string/jumbo v5, "getVolumeControlStream"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 934
    const/16 v76, 0x0

    .line 937
    .restart local v76    # "returnState":I
    :try_start_e
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_12

    move-result v76

    .line 944
    :goto_13
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 945
    const-string/jumbo v6, "getVolumeControlStream"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 944
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 947
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 948
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 947
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3a
    const-string/jumbo v5, "getStatusBarText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 956
    const/16 v78, 0x0

    .line 959
    .restart local v78    # "returnString":Ljava/lang/String;
    :try_start_f
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_13

    move-result-object v78

    .line 966
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_14
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 967
    const-string/jumbo v6, "getStatusBarText"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 966
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 969
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 970
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 969
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3b
    const-string/jumbo v5, "getStatusBarTextStyle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 978
    const/16 v76, 0x0

    .line 981
    .restart local v76    # "returnState":I
    :try_start_10
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_14

    move-result v76

    .line 988
    :goto_15
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 989
    const-string/jumbo v6, "getStatusBarTextStyle"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 988
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 991
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 992
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 991
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3c
    const-string/jumbo v5, "getStatusBarTextSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1000
    const/16 v76, 0x0

    .line 1003
    .restart local v76    # "returnState":I
    :try_start_11
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_15

    move-result v76

    .line 1010
    :goto_16
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1011
    const-string/jumbo v6, "getStatusBarTextSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1010
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1013
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1014
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1013
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3d
    const-string/jumbo v5, "getWifiConnectedMessageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1022
    const/16 v77, 0x1

    .line 1024
    .restart local v77    # "returnState":Z
    :try_start_12
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiConnectedMessageState()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_16

    move-result v77

    .line 1031
    .end local v77    # "returnState":Z
    :goto_17
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1032
    const-string/jumbo v6, "getWifiConnectedMessageState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1031
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1034
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1035
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1034
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3e
    const-string/jumbo v5, "getTorchOnVolumeButtonsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1043
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "torchlight_enable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_47

    const/16 v77, 0x1

    .line 1047
    .restart local v77    # "returnState":Z
    :goto_18
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1048
    const-string/jumbo v6, "getTorchOnVolumeButtonsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1047
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1050
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1051
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1050
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v77    # "returnState":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_3f
    const-string/jumbo v5, "getPowerMenuLockedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1059
    const/16 v77, 0x1

    .line 1061
    .restart local v77    # "returnState":Z
    :try_start_13
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_17

    move-result v77

    .line 1068
    .end local v77    # "returnState":Z
    :goto_19
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1069
    const-string/jumbo v6, "getPowerMenuLockedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1068
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1071
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1072
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1071
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 447
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_40
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v62

    .line 449
    .local v62, "paramState":Z
    const/4 v5, 0x1

    aget-object v61, p4, v5

    .line 453
    .local v61, "paramPasscode":Ljava/lang/String;
    const/16 v76, -0x1

    .line 456
    .restart local v76    # "returnState":I
    :try_start_14
    move-object/from16 v0, v36

    move/from16 v1, v62

    move-object/from16 v2, v61

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0

    move-result v76

    .line 463
    :goto_1a
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 464
    const-string/jumbo v6, "setSealedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 463
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 466
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 467
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 466
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 457
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :catch_0
    move-exception v25

    .line 458
    .local v25, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 479
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v61    # "paramPasscode":Ljava/lang/String;
    .end local v62    # "paramState":Z
    .end local v76    # "returnState":I
    .restart local v67    # "proKioskState":Z
    :catch_1
    move-exception v25

    .line 480
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 501
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v67    # "proKioskState":Z
    .restart local v76    # "returnState":I
    :catch_2
    move-exception v25

    .line 502
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 528
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    :cond_41
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    .line 529
    .local v63, "paramStringType":I
    const/16 v78, 0x0

    .line 534
    .restart local v78    # "returnString":Ljava/lang/String;
    :try_start_15
    move-object/from16 v0, v36

    move/from16 v1, v63

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3

    move-result-object v78

    .line 541
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_1b
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 542
    const-string/jumbo v6, "getSealedModeString"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 541
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 544
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 545
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 544
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 535
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v78    # "returnString":Ljava/lang/String;
    :catch_3
    move-exception v25

    .line 536
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 563
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v63    # "paramStringType":I
    .end local v78    # "returnString":Ljava/lang/String;
    :cond_42
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    .line 564
    .restart local v63    # "paramStringType":I
    const/16 v78, 0x0

    .line 569
    .restart local v78    # "returnString":Ljava/lang/String;
    :try_start_16
    move-object/from16 v0, v36

    move/from16 v1, v63

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_4

    move-result-object v78

    .line 576
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_1c
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 577
    const-string/jumbo v6, "getSealedExitUI"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 576
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 579
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 580
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 579
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 570
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v78    # "returnString":Ljava/lang/String;
    :catch_4
    move-exception v25

    .line 571
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 592
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v63    # "paramStringType":I
    :catch_5
    move-exception v25

    .line 593
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 614
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v78    # "returnString":Ljava/lang/String;
    .restart local v76    # "returnState":I
    :catch_6
    move-exception v25

    .line 615
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 636
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_7
    move-exception v25

    .line 637
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 657
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_8
    move-exception v25

    .line 658
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 679
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v25

    .line 680
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 700
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v25

    .line 701
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 727
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    :cond_43
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    .line 728
    .local v60, "paramAddressType":I
    const/16 v78, 0x0

    .line 733
    .restart local v78    # "returnString":Ljava/lang/String;
    :try_start_17
    move-object/from16 v0, v36

    move/from16 v1, v60

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b

    move-result-object v78

    .line 740
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_1d
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 741
    const-string/jumbo v6, "getSealedUsbNetAddress"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 740
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 743
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 744
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 743
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 734
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v78    # "returnString":Ljava/lang/String;
    :catch_b
    move-exception v25

    .line 735
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 758
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v60    # "paramAddressType":I
    .end local v78    # "returnString":Ljava/lang/String;
    .restart local v76    # "returnState":I
    .restart local v79    # "ultraSetting":I
    :cond_44
    const/16 v30, 0x0

    .line 762
    .local v30, "globalSetting":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "psm_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 765
    if-nez v30, :cond_45

    .line 766
    const/16 v76, 0x0

    goto/16 :goto_b

    .line 768
    :cond_45
    const/16 v76, 0x1

    goto/16 :goto_b

    .line 789
    .end local v30    # "globalSetting":I
    .end local v76    # "returnState":I
    .end local v79    # "ultraSetting":I
    :cond_46
    const/16 v77, 0x0

    .restart local v77    # "returnState":Z
    goto/16 :goto_c

    .line 808
    :catch_c
    move-exception v25

    .line 809
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 829
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v25

    .line 830
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 851
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_e
    move-exception v25

    .line 852
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 873
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_f
    move-exception v25

    .line 874
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 895
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_10
    move-exception v25

    .line 896
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 916
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_11
    move-exception v25

    .line 917
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 938
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_12
    move-exception v25

    .line 939
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 960
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v78    # "returnString":Ljava/lang/String;
    :catch_13
    move-exception v25

    .line 961
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 982
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v78    # "returnString":Ljava/lang/String;
    .restart local v76    # "returnState":I
    :catch_14
    move-exception v25

    .line 983
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 1004
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_15
    move-exception v25

    .line 1005
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 1025
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_16
    move-exception v25

    .line 1026
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 1043
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    :cond_47
    const/16 v77, 0x0

    .restart local v77    # "returnState":Z
    goto/16 :goto_18

    .line 1062
    :catch_17
    move-exception v25

    .line 1063
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 1078
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    :cond_48
    const/4 v5, 0x0

    return-object v5

    .line 1085
    :cond_49
    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1091
    .local v36, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v36

    .line 1092
    .local v36, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    if-eqz v36, :cond_7a

    if-eqz p3, :cond_7a

    .line 1096
    const-string/jumbo v5, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1101
    const/16 v77, 0x1

    .line 1104
    .restart local v77    # "returnState":Z
    :try_start_18
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v77

    .line 1111
    .end local v77    # "returnState":Z
    :goto_1e
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1112
    const-string/jumbo v6, "getSealedNotificationMessagesState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1111
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1114
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1115
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1114
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1972
    :cond_4a
    :goto_1f
    return-object v51

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_4b
    const-string/jumbo v5, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1123
    const/16 v76, -0x1

    .line 1126
    .restart local v76    # "returnState":I
    :try_start_19
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    move-result v76

    .line 1133
    :goto_20
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1134
    const-string/jumbo v6, "getSealedPowerDialogItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1133
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1136
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1137
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1136
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_4c
    const-string/jumbo v5, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1145
    const/16 v77, 0x0

    .line 1148
    .restart local v77    # "returnState":Z
    :try_start_1a
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v77

    .line 1155
    .end local v77    # "returnState":Z
    :goto_21
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1156
    const-string/jumbo v6, "getSealedPowerDialogCustomItemsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1155
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1158
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1159
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1158
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_4d
    const-string/jumbo v5, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1167
    const/16 v74, 0x0

    .line 1170
    .local v74, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    :try_start_1b
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result-object v74

    .line 1175
    .end local v74    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    :goto_22
    if-eqz v74, :cond_4e

    .line 1181
    :cond_4e
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1182
    const-string/jumbo v6, "getSealedPowerDialogCustomItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1181
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1185
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v74, :cond_4a

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1187
    invoke-interface/range {v74 .. v74}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .local v86, "value$iterator":Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/samsung/android/knox/custom/PowerItem;

    .line 1188
    .local v84, "value":Lcom/samsung/android/knox/custom/PowerItem;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1189
    invoke-virtual/range {v84 .. v84}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1188
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    .line 1096
    .end local v84    # "value":Lcom/samsung/android/knox/custom/PowerItem;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_4f
    const-string/jumbo v5, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1199
    const/16 v77, 0x0

    .line 1202
    .restart local v77    # "returnState":Z
    :try_start_1c
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v77

    .line 1209
    .end local v77    # "returnState":Z
    :goto_24
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1210
    const-string/jumbo v6, "getExtendedCallInfoState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1209
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1212
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1213
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1212
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_50
    const-string/jumbo v5, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1221
    const/16 v76, 0x0

    .line 1224
    .restart local v76    # "returnState":I
    :try_start_1d
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    move-result v76

    .line 1231
    :goto_25
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1232
    const-string/jumbo v6, "getSettingsHiddenState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1231
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1234
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1235
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1234
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_51
    const-string/jumbo v5, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1243
    const/16 v76, -0x1

    .line 1246
    .restart local v76    # "returnState":I
    :try_start_1e
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    move-result v76

    .line 1253
    :goto_26
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1254
    const-string/jumbo v6, "getSealedHideNotificationMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1253
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1256
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1257
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1256
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_52
    const-string/jumbo v5, "getCheckCoverPopupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1265
    const/16 v77, 0x1

    .line 1268
    .restart local v77    # "returnState":Z
    :try_start_1f
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCheckCoverPopupState()Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result v77

    .line 1275
    .end local v77    # "returnState":Z
    :goto_27
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1276
    const-string/jumbo v6, "getCheckCoverPopupState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1275
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1278
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1279
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1278
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_53
    const-string/jumbo v5, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1287
    const/16 v78, 0x0

    .line 1290
    .restart local v78    # "returnString":Ljava/lang/String;
    :try_start_20
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    move-result-object v78

    .line 1297
    .end local v78    # "returnString":Ljava/lang/String;
    :goto_28
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1298
    const-string/jumbo v6, "getRecentLongPressActivity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1297
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1300
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1301
    const/4 v6, 0x0

    aput-object v78, v5, v6

    .line 1300
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_54
    const-string/jumbo v5, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1309
    const/16 v76, -0x1

    .line 1312
    .restart local v76    # "returnState":I
    :try_start_21
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    move-result v76

    .line 1319
    :goto_29
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1320
    const-string/jumbo v6, "getRecentLongPressMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1319
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1322
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1323
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1322
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_55
    const-string/jumbo v5, "getVolumeButtonRotationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1331
    const/16 v77, 0x0

    .line 1334
    .restart local v77    # "returnState":Z
    :try_start_22
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    move-result v77

    .line 1341
    .end local v77    # "returnState":Z
    :goto_2a
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1342
    const-string/jumbo v6, "getVolumeButtonRotationState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1341
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1344
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1345
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1344
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_56
    const-string/jumbo v5, "getGearNotificationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1353
    const/16 v77, 0x1

    .line 1356
    .restart local v77    # "returnState":Z
    :try_start_23
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    move-result v77

    .line 1363
    .end local v77    # "returnState":Z
    :goto_2b
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1364
    const-string/jumbo v6, "getGearNotificationState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1363
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1366
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1367
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1366
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_57
    const-string/jumbo v5, "getScreenOffOnHomeLongPressState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1375
    const/16 v77, 0x0

    .line 1378
    .restart local v77    # "returnState":Z
    :try_start_24
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    move-result v77

    .line 1385
    .end local v77    # "returnState":Z
    :goto_2c
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1386
    const-string/jumbo v6, "getScreenOffOnHomeLongPressState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1385
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1388
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1389
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1388
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_58
    const-string/jumbo v5, "getScreenOffOnStatusBarDoubleTapState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1397
    const/16 v77, 0x0

    .line 1400
    .restart local v77    # "returnState":Z
    :try_start_25
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    move-result v77

    .line 1407
    .end local v77    # "returnState":Z
    :goto_2d
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1408
    const-string/jumbo v6, "getScreenOffOnStatusBarDoubleTapState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1407
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1410
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1411
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1410
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_59
    const-string/jumbo v5, "getWifiAutoSwitchState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 1419
    const/16 v77, 0x0

    .line 1422
    .restart local v77    # "returnState":Z
    :try_start_26
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    move-result v77

    .line 1429
    .end local v77    # "returnState":Z
    :goto_2e
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1430
    const-string/jumbo v6, "getWifiAutoSwitchState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1429
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1432
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1433
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1432
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5a
    const-string/jumbo v5, "getWifiAutoSwitchThreshold"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1441
    const/16 v76, -0xc8

    .line 1444
    .restart local v76    # "returnState":I
    :try_start_27
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    move-result v76

    .line 1451
    :goto_2f
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1452
    const-string/jumbo v6, "getWifiAutoSwitchThreshold"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1451
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1454
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1455
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1454
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5b
    const-string/jumbo v5, "getWifiAutoSwitchDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 1463
    const/16 v76, 0x14

    .line 1466
    .restart local v76    # "returnState":I
    :try_start_28
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    move-result v76

    .line 1473
    :goto_30
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1474
    const-string/jumbo v6, "getWifiAutoSwitchDelay"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1473
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1476
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1477
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1476
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5c
    const-string/jumbo v5, "getLockScreenHiddenItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1485
    const/16 v76, 0x0

    .line 1488
    .restart local v76    # "returnState":I
    :try_start_29
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    move-result v76

    .line 1495
    :goto_31
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1496
    const-string/jumbo v6, "getLockScreenHiddenItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1495
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1498
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1499
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1498
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5d
    const-string/jumbo v5, "getToastEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1507
    const/16 v77, 0x1

    .line 1510
    .restart local v77    # "returnState":Z
    :try_start_2a
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-result v77

    .line 1517
    .end local v77    # "returnState":Z
    :goto_32
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1518
    const-string/jumbo v6, "getToastEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1517
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1520
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1521
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1520
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5e
    const-string/jumbo v5, "getToastShowPackageNameState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1529
    const/16 v77, 0x0

    .line 1532
    .restart local v77    # "returnState":Z
    :try_start_2b
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    move-result v77

    .line 1539
    .end local v77    # "returnState":Z
    :goto_33
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1540
    const-string/jumbo v6, "getToastShowPackageNameState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1539
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1542
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1543
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1542
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_5f
    const-string/jumbo v5, "getToastGravityEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1551
    const/16 v77, 0x0

    .line 1554
    .restart local v77    # "returnState":Z
    :try_start_2c
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_2c

    move-result v77

    .line 1561
    .end local v77    # "returnState":Z
    :goto_34
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1562
    const-string/jumbo v6, "getToastGravityEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1561
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1564
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1565
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1564
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_60
    const-string/jumbo v5, "getToastGravity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1573
    const/16 v76, 0x0

    .line 1576
    .restart local v76    # "returnState":I
    :try_start_2d
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_2d

    move-result v76

    .line 1583
    :goto_35
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1584
    const-string/jumbo v6, "getToastGravity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1583
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1586
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1587
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1586
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_61
    const-string/jumbo v5, "getToastGravityXOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1595
    const/16 v76, 0x0

    .line 1598
    .restart local v76    # "returnState":I
    :try_start_2e
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_2e

    move-result v76

    .line 1605
    :goto_36
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1606
    const-string/jumbo v6, "getToastGravityXOffset"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1605
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1608
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1609
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1608
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_62
    const-string/jumbo v5, "getToastGravityYOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1617
    const/16 v76, 0x0

    .line 1620
    .restart local v76    # "returnState":I
    :try_start_2f
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_2f

    move-result v76

    .line 1627
    :goto_37
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1628
    const-string/jumbo v6, "getToastGravityYOffset"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1627
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1630
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1631
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1630
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_63
    const-string/jumbo v5, "getAppBlockDownloadState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1639
    const/16 v77, 0x0

    .line 1642
    .restart local v77    # "returnState":Z
    :try_start_30
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_30

    move-result v77

    .line 1649
    .end local v77    # "returnState":Z
    :goto_38
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1650
    const-string/jumbo v6, "getAppBlockDownloadState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1649
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1652
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1653
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1652
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_64
    const-string/jumbo v5, "getAppBlockDownloadNamespaces"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 1661
    const/16 v75, 0x0

    .line 1664
    .local v75, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_31
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_31

    move-result-object v75

    .line 1669
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_39
    if-eqz v75, :cond_65

    .line 1675
    :cond_65
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1676
    const-string/jumbo v6, "getAppBlockDownloadNamespaces"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1675
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1679
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v75, :cond_4a

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1681
    invoke-interface/range {v75 .. v75}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_3a
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 1682
    .local v85, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1683
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 1682
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3a

    .line 1096
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_66
    const-string/jumbo v5, "getEthernetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1693
    const/16 v77, 0x1

    .line 1696
    .restart local v77    # "returnState":Z
    :try_start_32
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_32} :catch_32

    move-result v77

    .line 1703
    .end local v77    # "returnState":Z
    :goto_3b
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1704
    const-string/jumbo v6, "getEthernetState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1703
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1706
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1707
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1706
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_67
    const-string/jumbo v5, "getEthernetConfigurationType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1715
    const/16 v76, 0x0

    .line 1718
    .restart local v76    # "returnState":I
    :try_start_33
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_33

    move-result v76

    .line 1725
    :goto_3c
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1726
    const-string/jumbo v6, "getEthernetConfigurationType"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1725
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1728
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1729
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1728
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_68
    const-string/jumbo v5, "getSealedHardKeyIntentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1737
    const/16 v77, 0x0

    .line 1740
    .restart local v77    # "returnState":Z
    :try_start_34
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_34

    move-result v77

    .line 1747
    .end local v77    # "returnState":Z
    :goto_3d
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1748
    const-string/jumbo v6, "getSealedHardKeyIntentState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1747
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1750
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1751
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1750
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_69
    const-string/jumbo v5, "getSealedVolumeKeyAppState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1759
    const/16 v77, 0x0

    .line 1762
    .restart local v77    # "returnState":Z
    :try_start_35
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_35

    move-result v77

    .line 1769
    .end local v77    # "returnState":Z
    :goto_3e
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1770
    const-string/jumbo v6, "getSealedVolumeKeyAppState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1769
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1772
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1773
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1772
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_6a
    const-string/jumbo v5, "getSettingsEnabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1781
    const/16 v76, 0x0

    .line 1784
    .restart local v76    # "returnState":I
    :try_start_36
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_36

    move-result v76

    .line 1791
    :goto_3f
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1792
    const-string/jumbo v6, "getSettingsEnabledItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1791
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1794
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1795
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1794
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_6b
    const-string/jumbo v5, "getSealedVolumeKeyAppsList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 1803
    const/16 v75, 0x0

    .line 1806
    .restart local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_37
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_37

    move-result-object v75

    .line 1811
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_40
    if-eqz v75, :cond_6c

    .line 1817
    :cond_6c
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1818
    const-string/jumbo v6, "getSealedVolumeKeyAppsList"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1817
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1821
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v75, :cond_4a

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1823
    invoke-interface/range {v75 .. v75}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_41
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 1824
    .restart local v85    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1825
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 1824
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_41

    .line 1096
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_6d
    const-string/jumbo v5, "getUsbConnectionType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1835
    const/16 v76, 0x0

    .line 1838
    .restart local v76    # "returnState":I
    :try_start_38
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_38

    move-result v76

    .line 1845
    :goto_42
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1846
    const-string/jumbo v6, "getUsbConnectionType"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1845
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1848
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1849
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1848
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_6e
    const-string/jumbo v5, "getAutoCallPickupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1857
    const/16 v76, -0x1

    .line 1860
    .restart local v76    # "returnState":I
    :try_start_39
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_39

    move-result v76

    .line 1867
    :goto_43
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1868
    const-string/jumbo v6, "getAutoCallPickupState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1867
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1870
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1871
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1870
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1096
    .end local v76    # "returnState":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_6f
    const-string/jumbo v5, "getAutoCallNumberList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1879
    const/16 v75, 0x0

    .line 1882
    .restart local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3a
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_3a

    move-result-object v75

    .line 1887
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_44
    if-eqz v75, :cond_70

    .line 1893
    :cond_70
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1894
    const-string/jumbo v6, "getAutoCallNumberList"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1893
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1897
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v75, :cond_4a

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1899
    invoke-interface/range {v75 .. v75}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 1900
    .restart local v85    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1901
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 1900
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_45

    .line 1096
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_71
    const-string/jumbo v5, "getAutoCallNumberDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1910
    if-eqz p4, :cond_72

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_77

    .line 1911
    :cond_72
    if-eqz p4, :cond_73

    .line 1916
    :cond_73
    const/4 v5, 0x0

    return-object v5

    .line 1096
    :cond_74
    const-string/jumbo v5, "getAutoCallNumberAnswerMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1940
    if-eqz p4, :cond_75

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_78

    .line 1941
    :cond_75
    if-eqz p4, :cond_76

    .line 1946
    :cond_76
    const/4 v5, 0x0

    return-object v5

    .line 1105
    .restart local v77    # "returnState":Z
    :catch_18
    move-exception v25

    .line 1106
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 1127
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_19
    move-exception v25

    .line 1128
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 1149
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_1a
    move-exception v25

    .line 1150
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 1171
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v74    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    :catch_1b
    move-exception v25

    .line 1172
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 1203
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v74    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    .restart local v77    # "returnState":Z
    :catch_1c
    move-exception v25

    .line 1204
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1225
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_1d
    move-exception v25

    .line 1226
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1247
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_1e
    move-exception v25

    .line 1248
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1269
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_1f
    move-exception v25

    .line 1270
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1291
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v78    # "returnString":Ljava/lang/String;
    :catch_20
    move-exception v25

    .line 1292
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1313
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v78    # "returnString":Ljava/lang/String;
    .restart local v76    # "returnState":I
    :catch_21
    move-exception v25

    .line 1314
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1335
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_22
    move-exception v25

    .line 1336
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 1357
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_23
    move-exception v25

    .line 1358
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1379
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v25

    .line 1380
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1401
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v25

    .line 1402
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1423
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v25

    .line 1424
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 1445
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_27
    move-exception v25

    .line 1446
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1467
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_28
    move-exception v25

    .line 1468
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1489
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_29
    move-exception v25

    .line 1490
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1511
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_2a
    move-exception v25

    .line 1512
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1533
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_2b
    move-exception v25

    .line 1534
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1555
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v25

    .line 1556
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1577
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_2d
    move-exception v25

    .line 1578
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1599
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_2e
    move-exception v25

    .line 1600
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1621
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v25

    .line 1622
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 1643
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_30
    move-exception v25

    .line 1644
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 1665
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_31
    move-exception v25

    .line 1666
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 1697
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v77    # "returnState":Z
    :catch_32
    move-exception v25

    .line 1698
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 1719
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_33
    move-exception v25

    .line 1720
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 1741
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v77    # "returnState":Z
    :catch_34
    move-exception v25

    .line 1742
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1763
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_35
    move-exception v25

    .line 1764
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 1785
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v77    # "returnState":Z
    .restart local v76    # "returnState":I
    :catch_36
    move-exception v25

    .line 1786
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 1807
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_37
    move-exception v25

    .line 1808
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 1839
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v76    # "returnState":I
    :catch_38
    move-exception v25

    .line 1840
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1861
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_39
    move-exception v25

    .line 1862
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1883
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    .restart local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3a
    move-exception v25

    .line 1884
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .line 1919
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v75    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_77
    const/16 v76, -0x1

    .line 1922
    .restart local v76    # "returnState":I
    const/4 v5, 0x0

    :try_start_3b
    aget-object v5, p4, v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_3b

    move-result v76

    .line 1929
    :goto_46
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1930
    const-string/jumbo v6, "getAutoCallNumberDelay"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1929
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1932
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1933
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1932
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1923
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :catch_3b
    move-exception v25

    .line 1924
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 1949
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    :cond_78
    const/16 v76, -0x1

    .line 1952
    .restart local v76    # "returnState":I
    const/4 v5, 0x0

    :try_start_3c
    aget-object v5, p4, v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_3c

    move-result v76

    .line 1959
    :goto_47
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1960
    const-string/jumbo v6, "getAutoCallNumberAnswerMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1959
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1962
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 1963
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1962
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 1953
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :catch_3c
    move-exception v25

    .line 1954
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 1969
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v76    # "returnState":I
    :cond_79
    const/4 v5, 0x0

    return-object v5

    .line 1974
    :cond_7a
    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1982
    .local v36, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    :pswitch_4
    const-string/jumbo v5, "application_policy"

    .line 1981
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1983
    .local v4, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_0

    .line 1984
    const-string/jumbo v5, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1986
    if-eqz p4, :cond_7b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a6

    .line 1987
    :cond_7b
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_7c
    const-string/jumbo v5, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 2001
    if-eqz p4, :cond_7d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a7

    .line 2002
    :cond_7d
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_7e
    const-string/jumbo v5, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 2016
    if-eqz p4, :cond_7f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a8

    .line 2017
    :cond_7f
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_80
    const-string/jumbo v5, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 2032
    if-eqz p4, :cond_81

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a9

    .line 2033
    :cond_81
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_82
    const-string/jumbo v5, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 2049
    const/16 v70, 0x1

    .line 2052
    .local v70, "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2053
    const-string/jumbo v6, "getAppInstallToSdCard"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2052
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2055
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2056
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2055
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2416
    .end local v70    # "result":Z
    :cond_83
    :goto_48
    return-object v51

    .line 1984
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_84
    const-string/jumbo v5, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2062
    if-eqz p4, :cond_85

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_aa

    .line 2063
    :cond_85
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_86
    const-string/jumbo v5, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 2081
    if-eqz p4, :cond_87

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_ab

    .line 2082
    :cond_87
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_88
    const-string/jumbo v5, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 2097
    if-eqz p4, :cond_89

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_ac

    .line 2098
    :cond_89
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_8a
    const-string/jumbo v5, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 2113
    if-eqz p4, :cond_8b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_ad

    .line 2114
    :cond_8b
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_8c
    const-string/jumbo v5, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 2129
    if-eqz p4, :cond_8d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_ae

    .line 2130
    :cond_8d
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_8e
    const-string/jumbo v5, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 2145
    if-eqz p4, :cond_8f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_af

    .line 2146
    :cond_8f
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_90
    const-string/jumbo v5, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 2162
    if-eqz p4, :cond_91

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_b0

    .line 2163
    :cond_91
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_92
    const-string/jumbo v5, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 2178
    if-eqz p4, :cond_93

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_b1

    .line 2179
    :cond_93
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_94
    const-string/jumbo v5, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 2194
    if-eqz p4, :cond_95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b2

    .line 2195
    :cond_95
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_96
    const-string/jumbo v5, "isChangeSmsDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2208
    if-eqz p4, :cond_97

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b3

    .line 2209
    :cond_97
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_98
    const-string/jumbo v5, "isChangeAssistDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 2223
    if-eqz p4, :cond_99

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b4

    .line 2224
    :cond_99
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_9a
    const-string/jumbo v5, "isApplicationSetToDefault"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 2238
    if-eqz p4, :cond_9b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b5

    .line 2239
    :cond_9b
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_9c
    const-string/jumbo v5, "getDefaultApplicationInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 2253
    if-eqz p4, :cond_9d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b6

    .line 2254
    :cond_9d
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_9e
    const-string/jumbo v5, "getApplicationStateDisabledList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 2278
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v12

    .line 2280
    .local v12, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_b7

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 2282
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2283
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2282
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2285
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_49
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2286
    .restart local v85    # "value":Ljava/lang/String;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationStateDisabledList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2288
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2287
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_49

    .line 1984
    .end local v12    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_9f
    const-string/jumbo v5, "getApplicationInstallUninstallList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 2297
    if-eqz p4, :cond_a0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b8

    .line 2298
    :cond_a0
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const/4 v5, 0x0

    return-object v5

    .line 1984
    :cond_a1
    const-string/jumbo v5, "getAppInstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 2325
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v28

    .line 2328
    .local v28, "getAppInstall":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2329
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2328
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2331
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2332
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2331
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 1984
    .end local v28    # "getAppInstall":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a2
    const-string/jumbo v5, "getApplicationUninstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 2336
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v29

    .line 2339
    .local v29, "getAppUninstall":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2340
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2339
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2342
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2343
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2342
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 1984
    .end local v29    # "getAppUninstall":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a3
    const-string/jumbo v5, "getAllPackagesFromBatteryOptimizationWhiteList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 2347
    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v71

    .line 2349
    .local v71, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2350
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2349
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2352
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_83

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_83

    .line 2353
    invoke-interface/range {v71 .. v71}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v66

    .local v66, "pkg$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v66 .. v66}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/String;

    .line 2354
    .local v65, "pkg":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2355
    const/4 v6, 0x0

    aput-object v65, v5, v6

    .line 2354
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4a

    .line 1984
    .end local v65    # "pkg":Ljava/lang/String;
    .end local v66    # "pkg$iterator":Ljava/util/Iterator;
    .end local v71    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a4
    const-string/jumbo v5, "getPackagesFromDisableClipboardBlackList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 2361
    const/16 v69, 0x0

    .line 2362
    .local v69, "res":I
    const/16 v20, 0x0

    .line 2363
    .local v20, "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_ba

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_ba

    .line 2364
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 2365
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v0, v69

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v20

    .line 2370
    .local v20, "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4b
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2371
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2370
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2374
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v20, :cond_bb

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 2375
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_4c
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2376
    .restart local v85    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2377
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2376
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4c

    .line 1984
    .end local v20    # "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v69    # "res":I
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a5
    const-string/jumbo v5, "getPackagesFromDisableClipboardWhiteList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 2386
    const/16 v69, 0x0

    .line 2387
    .restart local v69    # "res":I
    const/16 v21, 0x0

    .line 2388
    .local v21, "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_bc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_bc

    .line 2389
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 2390
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v0, v69

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v21

    .line 2396
    .end local v21    # "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4d
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2397
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2396
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2400
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v21, :cond_bd

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bd

    .line 2401
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_4e
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2402
    .restart local v85    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2403
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2402
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4e

    .line 1989
    .end local v69    # "res":I
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 1992
    .local v70, "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1993
    const-string/jumbo v6, "getApplicationUninstallationEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1992
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1995
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 1996
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1995
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2004
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a7
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 2007
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2008
    const-string/jumbo v6, "isApplicationInstalled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2007
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2010
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2011
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2010
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2019
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a8
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2018
    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v70

    .line 2022
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2023
    const-string/jumbo v6, "isIntentDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2022
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2025
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2026
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2025
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2035
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_a9
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v69

    .line 2038
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2039
    const-string/jumbo v6, "getApplicationNotificationMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2038
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2041
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2042
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2041
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2066
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_aa
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2067
    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    .line 2068
    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 2065
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v70

    .line 2071
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2072
    const-string/jumbo v6, "isApplicationForceStopDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2071
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2074
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2075
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2074
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2084
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ab
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v70

    .line 2087
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2088
    const-string/jumbo v6, "isApplicationClearDataDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2087
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2090
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2091
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2090
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2100
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ac
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v70

    .line 2103
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2104
    const-string/jumbo v6, "isApplicationClearCacheDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2103
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2106
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2107
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2106
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2116
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ad
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v73

    .line 2119
    .local v73, "resultString":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2120
    const-string/jumbo v6, "getApplicationNameFromDb"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2119
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2122
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2123
    const/4 v6, 0x0

    aput-object v73, v5, v6

    .line 2122
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2132
    .end local v73    # "resultString":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ae
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v70

    .line 2135
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2136
    const-string/jumbo v6, "isPackageUpdateAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2135
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2138
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2139
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2138
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2148
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_af
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2149
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2148
    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v70

    .line 2152
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2153
    const-string/jumbo v6, "getApplicationComponentState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2152
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2155
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2156
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2155
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2165
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b0
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 2168
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2169
    const-string/jumbo v6, "getApplicationStateEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2168
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2171
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2172
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2171
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2181
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b1
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2182
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    .line 2181
    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v70

    .line 2185
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2186
    const-string/jumbo v6, "isUsbDevicePermittedForPackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2185
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2188
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2189
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2188
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2197
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b2
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v68

    .line 2200
    .local v68, "re":[B
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2201
    const-string/jumbo v6, "getApplicationIconFromDb"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2200
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2203
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [[B

    .line 2204
    const/4 v6, 0x0

    aput-object v68, v5, v6

    .line 2203
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2211
    .end local v68    # "re":[B
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b3
    const/4 v5, 0x0

    aget-object v5, p4, v5

    .line 2212
    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2211
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v70

    .line 2215
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2216
    const-string/jumbo v6, "isChangeSmsDefaultAppAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2215
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2218
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2219
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2218
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2227
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b4
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2226
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v70

    .line 2230
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2231
    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2230
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2233
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2234
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2233
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2241
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b5
    const/4 v5, 0x0

    aget-object v5, p4, v5

    .line 2242
    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2241
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v70

    .line 2245
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2246
    const-string/jumbo v6, "isApplicationSetToDefault"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2245
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2248
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2249
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2248
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2257
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_b6
    const/16 v35, 0x0

    .line 2259
    .local v35, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_3d
    aget-object v5, p4, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3d
    .catch Ljava/net/URISyntaxException; {:try_start_3d .. :try_end_3d} :catch_3d

    move-result-object v35

    .line 2265
    .end local v35    # "intent":Landroid/content/Intent;
    :goto_4f
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2264
    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v22

    .line 2268
    .local v22, "compName":Landroid/content/ComponentName;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2269
    const-string/jumbo v6, "getDefaultApplicationInternal"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2268
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2271
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v22, :cond_83

    .line 2272
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2273
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2272
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2260
    .end local v22    # "compName":Landroid/content/ComponentName;
    .restart local v35    # "intent":Landroid/content/Intent;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :catch_3d
    move-exception v27

    .line 2261
    .local v27, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "URISyntaxException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2292
    .end local v27    # "e":Ljava/net/URISyntaxException;
    .end local v35    # "intent":Landroid/content/Intent;
    .restart local v12    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b7
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationStateDisabledList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/4 v5, 0x0

    return-object v5

    .line 2302
    .end local v12    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b8
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v34

    .line 2307
    .local v34, "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2308
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 2307
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2311
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v34, :cond_b9

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b9

    .line 2312
    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2313
    .restart local v85    # "value":Ljava/lang/String;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationInstallUninstallList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2315
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2314
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_50

    .line 2320
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    :cond_b9
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v5, 0x0

    return-object v5

    .line 2367
    .end local v34    # "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v69    # "res":I
    :cond_ba
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v20

    .local v20, "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_4b

    .line 2382
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_bb
    const/4 v5, 0x0

    return-object v5

    .line 2392
    .end local v20    # "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_bc
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v20

    .restart local v20    # "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_4d

    .line 2408
    .end local v20    # "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_bd
    const/4 v5, 0x0

    return-object v5

    .line 2412
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_be
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const/4 v5, 0x0

    return-object v5

    .line 2422
    .end local v4    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :pswitch_5
    const-string/jumbo v5, "eas_account_policy"

    .line 2421
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2423
    .local v40, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v40, :cond_0

    if-eqz p3, :cond_0

    .line 2424
    const-string/jumbo v5, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 2426
    if-eqz p4, :cond_bf

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_da

    .line 2427
    :cond_bf
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_c0
    const-string/jumbo v5, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 2440
    if-eqz p4, :cond_c1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_db

    .line 2441
    :cond_c1
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_c2
    const-string/jumbo v5, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 2454
    if-eqz p4, :cond_c3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_dc

    .line 2455
    :cond_c3
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_c4
    const-string/jumbo v5, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 2468
    if-eqz p4, :cond_c5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_dd

    .line 2469
    :cond_c5
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_c6
    const-string/jumbo v5, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 2482
    if-eqz p4, :cond_c7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_de

    .line 2483
    :cond_c7
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_c8
    const-string/jumbo v5, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 2496
    if-eqz p4, :cond_c9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_df

    .line 2497
    :cond_c9
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_ca
    const-string/jumbo v5, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 2510
    if-eqz p4, :cond_cb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e0

    .line 2511
    :cond_cb
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_cc
    const-string/jumbo v5, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 2524
    if-eqz p4, :cond_cd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e1

    .line 2525
    :cond_cd
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_ce
    const-string/jumbo v5, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 2538
    if-eqz p4, :cond_cf

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e2

    .line 2539
    :cond_cf
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_d0
    const-string/jumbo v5, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2552
    if-eqz p4, :cond_d1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e3

    .line 2553
    :cond_d1
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_d2
    const-string/jumbo v5, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 2566
    if-eqz p4, :cond_d3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e4

    .line 2567
    :cond_d3
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_d4
    const-string/jumbo v5, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 2580
    if-eqz p4, :cond_d5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e5

    .line 2581
    :cond_d5
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_d6
    const-string/jumbo v5, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 2594
    if-eqz p4, :cond_d7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e6

    .line 2595
    :cond_d7
    const/4 v5, 0x0

    return-object v5

    .line 2424
    :cond_d8
    const-string/jumbo v5, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 2608
    if-eqz p4, :cond_d9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_e7

    .line 2609
    :cond_d9
    const/4 v5, 0x0

    return-object v5

    .line 2428
    :cond_da
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2429
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2428
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2432
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2433
    const-string/jumbo v6, "getRequiredSignedMIMEMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2432
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2435
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2436
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2435
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2626
    .end local v70    # "result":Z
    :goto_51
    return-object v51

    .line 2442
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_db
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2443
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2442
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2446
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2447
    const-string/jumbo v6, "getRequiredEncryptedMIMEMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2446
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2449
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2450
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2449
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51

    .line 2456
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_dc
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2457
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2456
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2460
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2461
    const-string/jumbo v6, "getForceSMIMECertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2460
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2463
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2464
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2463
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51

    .line 2470
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_dd
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2471
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2470
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2474
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2475
    const-string/jumbo v6, "isIncomingAttachmentsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2474
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2477
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2478
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2477
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2484
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_de
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2485
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2484
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v69

    .line 2488
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2489
    const-string/jumbo v6, "getIncomingAttachmentSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2488
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2491
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2492
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2491
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2498
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_df
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2499
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2498
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v69

    .line 2502
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2503
    const-string/jumbo v6, "getMaxCalendarAgeFilter"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2502
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2505
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2506
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2505
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2512
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e0
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2513
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2512
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v69

    .line 2516
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2517
    const-string/jumbo v6, "getMaxEmailBodyTruncationSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2516
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2519
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2520
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2519
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2526
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e1
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2527
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2526
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v69

    .line 2530
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2531
    const-string/jumbo v6, "getMaxEmailHTMLBodyTruncationSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2530
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2533
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2534
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2533
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2540
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e2
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2541
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2540
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2544
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2545
    const-string/jumbo v6, "getForceSMIMECertificateForSigning"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2544
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2547
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2548
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2547
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2554
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e3
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2555
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2554
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 2558
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2559
    const-string/jumbo v6, "getForceSMIMECertificateForEncryption"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2558
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2561
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2562
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2561
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2568
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e4
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2569
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2568
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v64

    .line 2572
    .local v64, "passwd":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2573
    const-string/jumbo v6, "getAccountEmailPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2572
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2575
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2576
    const/4 v6, 0x0

    aput-object v64, v5, v6

    .line 2575
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2582
    .end local v64    # "passwd":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e5
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2583
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2582
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v19

    .line 2586
    .local v19, "certPasswd":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2587
    const-string/jumbo v6, "getAccountCertificatePassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2586
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2589
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2590
    const/4 v6, 0x0

    aput-object v19, v5, v6

    .line 2589
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2596
    .end local v19    # "certPasswd":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2597
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2596
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v69

    .line 2600
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2601
    const-string/jumbo v6, "getMaxEmailAgeFilter"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2600
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2603
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 2604
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2603
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2610
    .end local v69    # "res":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e7
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2611
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 2610
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v52

    .line 2614
    .local v52, "long_res":J
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2615
    const-string/jumbo v6, "setAccountEmailPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2614
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2617
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2618
    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2617
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 2622
    .end local v52    # "long_res":J
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_e8
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const/4 v5, 0x0

    return-object v5

    .line 2631
    .end local v40    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_6
    const-string/jumbo v5, "wifi_policy"

    .line 2630
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 2632
    .local v49, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v49, :cond_0

    if-eqz p3, :cond_0

    .line 2633
    const-string/jumbo v5, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 2635
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2638
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2639
    const-string/jumbo v6, "getAllowUserPolicyChanges"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2638
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2641
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2642
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2641
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2799
    .end local v70    # "result":Z
    :cond_e9
    :goto_52
    return-object v51

    .line 2633
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ea
    const-string/jumbo v5, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 2646
    if-eqz p4, :cond_eb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f9

    .line 2647
    :cond_eb
    const/4 v5, 0x0

    return-object v5

    .line 2633
    :cond_ec
    const-string/jumbo v5, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 2660
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2663
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2664
    const-string/jumbo v6, "getAutomaticConnectionToWifi"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2663
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2666
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2667
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2666
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ed
    const-string/jumbo v5, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 2671
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2674
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2675
    const-string/jumbo v6, "getPasswordHidden"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2674
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2677
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2678
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2677
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ee
    const-string/jumbo v5, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 2682
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2685
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2686
    const-string/jumbo v6, "getPromptCredentialsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2685
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2688
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2689
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2688
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ef
    const-string/jumbo v5, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 2693
    if-eqz p4, :cond_f0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_fa

    .line 2694
    :cond_f0
    const/4 v5, 0x0

    return-object v5

    .line 2633
    :cond_f1
    const-string/jumbo v5, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 2706
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2709
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2710
    const-string/jumbo v6, "isWifiApSettingUserModificationAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2709
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2712
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2713
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2712
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f2
    const-string/jumbo v5, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 2717
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2720
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2721
    const-string/jumbo v6, "isWifiStateChangeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2720
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2723
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2724
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2723
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f3
    const-string/jumbo v5, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 2728
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2731
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2732
    const-string/jumbo v6, "isOpenWifiApAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2731
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2734
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2735
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2734
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f4
    const-string/jumbo v5, "getAllSsidBlacklist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 2739
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v15

    .line 2742
    .local v15, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2743
    const-string/jumbo v6, "getAllSsidBlacklist"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2742
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2746
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v15, :cond_f5

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 2756
    :cond_f5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2757
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2756
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v15    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f6
    const-string/jumbo v5, "getAllSsidWhitelist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 2762
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v87

    .line 2765
    .local v87, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2766
    const-string/jumbo v6, "getAllSsidWhitelist"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2765
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2769
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v87, :cond_f7

    invoke-interface/range {v87 .. v87}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 2779
    :cond_f7
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2780
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2779
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2633
    .end local v87    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f8
    const-string/jumbo v5, "isWifiSsidRestrictionActive"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 2785
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2788
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2789
    const-string/jumbo v6, "isWifiSsidRestrictionActive"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2788
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2791
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2792
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2791
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2648
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_f9
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2649
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2648
    move-object/from16 v0, v49

    move/from16 v1, v82

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v70

    .line 2652
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2653
    const-string/jumbo v6, "getAllowUserProfiles"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2652
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2655
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2656
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2655
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2695
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_fa
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v70

    .line 2698
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2699
    const-string/jumbo v6, "isEnterpriseNetwork"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2698
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2701
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 2702
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2701
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2748
    .end local v70    # "result":Z
    .restart local v15    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fb
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_53
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2749
    .restart local v85    # "value":Ljava/lang/String;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2751
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2750
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_53

    .line 2771
    .end local v15    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .restart local v87    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fc
    invoke-interface/range {v87 .. v87}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_54
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/lang/String;

    .line 2772
    .restart local v85    # "value":Ljava/lang/String;
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2774
    const/4 v6, 0x0

    aput-object v85, v5, v6

    .line 2773
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_54

    .line 2796
    .end local v85    # "value":Ljava/lang/String;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .end local v87    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_fd
    const/4 v5, 0x0

    return-object v5

    .line 2804
    .end local v49    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_7
    const-string/jumbo v5, "kioskmode"

    .line 2803
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2805
    .local v44, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v44, :cond_0

    .line 2806
    const-string/jumbo v5, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 2808
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2812
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2813
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isNavigationBarHidden"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2812
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2814
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2992
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .end local v70    # "result":Z
    :cond_fe
    :goto_55
    return-object v51

    .line 2806
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_ff
    const-string/jumbo v5, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 2818
    if-eqz p4, :cond_100

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_110

    .line 2819
    :cond_100
    const/4 v5, 0x0

    return-object v5

    .line 2806
    :cond_101
    const-string/jumbo v5, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 2831
    if-eqz p4, :cond_102

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_111

    .line 2832
    :cond_102
    const/4 v5, 0x0

    return-object v5

    .line 2806
    :cond_103
    const-string/jumbo v5, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 2843
    if-nez p4, :cond_112

    .line 2844
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2852
    .restart local v70    # "result":Z
    :goto_56
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2855
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAirCommandModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2854
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2856
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_104
    const-string/jumbo v5, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 2860
    if-nez p4, :cond_113

    .line 2861
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2869
    .restart local v70    # "result":Z
    :goto_57
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2872
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAirViewModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2871
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2873
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_105
    const-string/jumbo v5, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    .line 2877
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v72

    .line 2880
    .local v72, "resultMap":Ljava/lang/Object;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2881
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getBlockedHwKeysCache"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2880
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2882
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v72, v5, v6

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v72    # "resultMap":Ljava/lang/Object;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_106
    const-string/jumbo v5, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 2886
    if-eqz p4, :cond_107

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_114

    .line 2887
    :cond_107
    const/4 v5, 0x0

    return-object v5

    .line 2806
    :cond_108
    const-string/jumbo v5, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 2899
    if-nez p4, :cond_115

    .line 2900
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2908
    .restart local v70    # "result":Z
    :goto_58
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2911
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isKioskModeEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2910
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2912
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_109
    const-string/jumbo v5, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 2916
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v31

    .line 2920
    .local v31, "homePkg":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2921
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getKioskHomePackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2920
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2922
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v5, v6

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v31    # "homePkg":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10a
    const-string/jumbo v5, "isNightClockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 2927
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2930
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2931
    const-string/jumbo v6, "isNightClockAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2930
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2933
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10b
    const-string/jumbo v5, "isPeopleEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 2938
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2941
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2942
    const-string/jumbo v6, "isPeopleEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2941
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2944
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10c
    const-string/jumbo v5, "isEdgeLightingAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 2949
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2952
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2953
    const-string/jumbo v6, "isEdgeLightingAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2952
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2955
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10d
    const-string/jumbo v5, "isInformationStreamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 2960
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2963
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2964
    const-string/jumbo v6, "isInformationStreamAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2963
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2966
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10e
    const-string/jumbo v5, "isAppsEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 2971
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2974
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2975
    const-string/jumbo v6, "isAppsEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2974
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2977
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2806
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_10f
    const-string/jumbo v5, "isEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 2982
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2985
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 2986
    const-string/jumbo v6, "isEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2985
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2988
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2821
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_110
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2822
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2821
    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 2825
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2826
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isMultiWindowModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2825
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2827
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2834
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_111
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v70

    .line 2835
    .restart local v70    # "result":Z
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2838
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isMultiWindowModeAllowedAsUser"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2837
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2839
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2848
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_112
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 2849
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2848
    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2850
    .restart local v70    # "result":Z
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 2865
    .end local v70    # "result":Z
    :cond_113
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 2866
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2865
    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2867
    .restart local v70    # "result":Z
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 2889
    .end local v70    # "result":Z
    :cond_114
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2890
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2889
    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 2893
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 2894
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isTaskManagerAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2893
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2895
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    .line 2904
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_115
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 2905
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2904
    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 2906
    .restart local v70    # "result":Z
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 3000
    .end local v44    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .end local v70    # "result":Z
    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v43

    .line 3001
    .local v43, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 3002
    const-string/jumbo v5, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 3004
    if-eqz p4, :cond_116

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_128

    .line 3005
    :cond_116
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_117
    const-string/jumbo v5, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 3018
    if-eqz p4, :cond_118

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_129

    .line 3019
    :cond_118
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_119
    const-string/jumbo v5, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 3038
    if-eqz p4, :cond_11a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_12a

    .line 3039
    :cond_11a
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_11b
    const-string/jumbo v5, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 3049
    if-eqz p4, :cond_11c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_12b

    .line 3050
    :cond_11c
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_11d
    const-string/jumbo v5, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 3062
    if-eqz p4, :cond_11e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_12c

    .line 3063
    :cond_11e
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_11f
    const-string/jumbo v5, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 3073
    if-eqz p4, :cond_120

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_12d

    .line 3074
    :cond_120
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_121
    const-string/jumbo v5, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 3083
    if-eqz p4, :cond_122

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_12e

    .line 3084
    :cond_122
    const/4 v5, 0x0

    return-object v5

    .line 3002
    :cond_123
    const-string/jumbo v5, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 3131
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_124
    :goto_59
    return-object v51

    .line 3002
    .restart local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_125
    const-string/jumbo v5, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 3099
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .line 3100
    .local v11, "admin":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3101
    const-string/jumbo v6, "getMyKnoxAdmin"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3100
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3103
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3104
    const/4 v6, 0x0

    aput-object v11, v5, v6

    .line 3103
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_59

    .line 3002
    .end local v11    # "admin":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_126
    const-string/jumbo v5, "isMdmAdminPresent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_127

    .line 3108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v80

    .line 3110
    .local v80, "token":J
    :try_start_3e
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v70

    .line 3111
    .restart local v70    # "result":Z
    new-instance v54, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3112
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 3111
    move-object/from16 v0, v54

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 3114
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .local v54, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    :try_start_3f
    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3115
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3114
    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    .line 3118
    invoke-static/range {v80 .. v81}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v51, v54

    .line 3120
    .end local v54    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto :goto_59

    .line 3002
    .end local v70    # "result":Z
    .end local v80    # "token":J
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_127
    const-string/jumbo v5, "getEnterpriseSdkVer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 3122
    const-string/jumbo v5, "18"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v55

    .line 3123
    .local v55, "mdm_config_version":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3124
    const-string/jumbo v6, "getEnterpriseSdkVer"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3123
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3126
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 3127
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3126
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 3006
    .end local v55    # "mdm_config_version":I
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_128
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3007
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 3006
    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 3009
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3010
    const-string/jumbo v6, "getAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3009
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3013
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3014
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3013
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 3021
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_129
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3020
    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v50

    .line 3024
    .local v50, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3025
    const-string/jumbo v6, "getActiveAdmins"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3024
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3028
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v50, :cond_124

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_124

    .line 3030
    invoke-interface/range {v50 .. v50}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "value$iterator":Ljava/util/Iterator;
    :goto_5a
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_124

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/content/ComponentName;

    .line 3031
    .local v83, "value":Landroid/content/ComponentName;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3032
    invoke-virtual/range {v83 .. v83}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3031
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5a

    .line 3041
    .end local v50    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v83    # "value":Landroid/content/ComponentName;
    .end local v86    # "value$iterator":Ljava/util/Iterator;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_12a
    const/4 v5, 0x0

    :try_start_40
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 3042
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 3041
    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_40} :catch_3e

    goto/16 :goto_59

    .line 3043
    :catch_3e
    move-exception v25

    .line 3045
    .restart local v25    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_59

    .line 3051
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_12b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3053
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3054
    const-string/jumbo v6, "isAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3053
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3057
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3058
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3057
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 3065
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_12c
    const/4 v5, 0x0

    :try_start_41
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 3066
    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3065
    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_3f

    goto/16 :goto_59

    .line 3067
    :catch_3f
    move-exception v25

    .line 3069
    .restart local v25    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_59

    .line 3076
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_12d
    const/4 v5, 0x0

    :try_start_42
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_42} :catch_40

    goto/16 :goto_59

    .line 3077
    :catch_40
    move-exception v25

    .line 3079
    .restart local v25    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_59

    .line 3085
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_12e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3086
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    .line 3085
    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v70

    .line 3088
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3089
    const-string/jumbo v6, "setAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3088
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3091
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3092
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3091
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 3117
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v80    # "token":J
    :catchall_0
    move-exception v5

    .line 3118
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :goto_5b
    invoke-static/range {v80 .. v81}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3117
    throw v5

    .line 3136
    .end local v43    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v80    # "token":J
    .restart local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :pswitch_9
    const-string/jumbo v5, "email_policy"

    .line 3135
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 3137
    .local v42, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v42, :cond_0

    if-eqz p3, :cond_0

    .line 3138
    const-string/jumbo v5, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 3140
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v70

    .line 3143
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3144
    const-string/jumbo v6, "isAccountAdditionAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3143
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3146
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3147
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3146
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3239
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v70    # "result":Z
    :goto_5c
    return-object v51

    .line 3138
    .restart local v16    # "bundle":Landroid/os/Bundle;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_12f
    const-string/jumbo v5, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 3151
    if-eqz p4, :cond_130

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13b

    .line 3152
    :cond_130
    const/4 v5, 0x0

    return-object v5

    .line 3138
    :cond_131
    const-string/jumbo v5, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 3165
    if-eqz p4, :cond_132

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13c

    .line 3166
    :cond_132
    const/4 v5, 0x0

    return-object v5

    .line 3138
    :cond_133
    const-string/jumbo v5, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 3179
    if-eqz p4, :cond_134

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13d

    .line 3180
    :cond_134
    const/4 v5, 0x0

    return-object v5

    .line 3138
    :cond_135
    const-string/jumbo v5, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 3193
    if-eqz p4, :cond_136

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13e

    .line 3194
    :cond_136
    const/4 v5, 0x0

    return-object v5

    .line 3138
    :cond_137
    const-string/jumbo v5, "getEnterpriseExchangeAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 3207
    if-eqz p4, :cond_138

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13f

    .line 3208
    :cond_138
    const/4 v5, 0x0

    return-object v5

    .line 3138
    :cond_139
    const-string/jumbo v5, "getEnterpriseEmailAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    .line 3221
    if-eqz p4, :cond_13a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_140

    .line 3222
    :cond_13a
    const/4 v5, 0x0

    return-object v5

    .line 3153
    :cond_13b
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3154
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 3153
    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 3157
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3158
    const-string/jumbo v6, "getAllowEmailForwarding"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3157
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3160
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3161
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3160
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    .line 3167
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_13c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3168
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3167
    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 3171
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3172
    const-string/jumbo v6, "isEmailSettingsChangesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3171
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3174
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3175
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3174
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    .line 3181
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_13d
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3182
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3181
    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v70

    .line 3185
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3186
    const-string/jumbo v6, "isEmailNotificationsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3185
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3188
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3189
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3188
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    .line 3195
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_13e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3196
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 3195
    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 3199
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3200
    const-string/jumbo v6, "getAllowHtmlEmail"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3199
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3202
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3203
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3202
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    .line 3209
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_13f
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3210
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3209
    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v56

    .line 3212
    .local v56, "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3213
    const-string/jumbo v6, "getEnterpriseExchangeAccountObject"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3212
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3216
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3217
    .local v16, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "eas.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3218
    move-object/from16 v0, v51

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_5c

    .line 3223
    .end local v56    # "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .local v16, "bundle":Landroid/os/Bundle;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_140
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3224
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3223
    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v57

    .line 3226
    .local v57, "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3227
    const-string/jumbo v6, "getEnterpriseEmailAccountObject"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3226
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3230
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3231
    .local v16, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "email.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3232
    move-object/from16 v0, v51

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_5c

    .line 3236
    .end local v57    # "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .local v16, "bundle":Landroid/os/Bundle;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_141
    const/4 v5, 0x0

    return-object v5

    .line 3246
    .end local v42    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    :pswitch_a
    const-string/jumbo v5, "vpn_policy"

    .line 3245
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 3247
    .local v48, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    if-eqz v48, :cond_0

    .line 3248
    const-string/jumbo v5, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 3250
    if-eqz p4, :cond_142

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_149

    .line 3251
    :cond_142
    const/4 v5, 0x0

    return-object v5

    .line 3248
    :cond_143
    const-string/jumbo v5, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 3265
    const/4 v13, 0x0

    .line 3266
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_144

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_144

    .line 3267
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3269
    .end local v13    # "arg":Z
    :cond_144
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 3272
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3273
    const-string/jumbo v6, "isUserAddProfilesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3272
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3275
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3276
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3275
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3317
    :goto_5d
    return-object v51

    .line 3248
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_145
    const-string/jumbo v5, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 3281
    const/4 v13, 0x0

    .line 3282
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_146

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_146

    .line 3283
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3285
    .end local v13    # "arg":Z
    :cond_146
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 3288
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3289
    const-string/jumbo v6, "isUserChangeProfilesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3288
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3291
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3292
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3291
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5d

    .line 3248
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_147
    const-string/jumbo v5, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 3297
    const/4 v13, 0x0

    .line 3298
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_148

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_148

    .line 3299
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3301
    .end local v13    # "arg":Z
    :cond_148
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v70

    .line 3304
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3305
    const-string/jumbo v6, "isUserSetAlwaysOnAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3304
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3307
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3308
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3307
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 3253
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_149
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v70

    .line 3256
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3257
    const-string/jumbo v6, "checkRacoonSecurity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3256
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3259
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3260
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3259
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 3314
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_14a
    const/4 v5, 0x0

    return-object v5

    .line 3322
    .end local v48    # "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :pswitch_b
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    .line 3321
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 3323
    .local v37, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v37, :cond_0

    .line 3324
    const-string/jumbo v5, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 3326
    if-eqz p4, :cond_14b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_151

    .line 3327
    :cond_14b
    const/4 v5, 0x0

    return-object v5

    .line 3324
    :cond_14c
    const-string/jumbo v5, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 3355
    if-eqz p4, :cond_14d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_153

    .line 3356
    :cond_14d
    const/4 v5, 0x0

    return-object v5

    .line 3324
    :cond_14e
    const-string/jumbo v5, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 3370
    if-eqz p4, :cond_14f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_154

    .line 3371
    :cond_14f
    const/4 v5, 0x0

    return-object v5

    .line 3324
    :cond_150
    const-string/jumbo v5, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 3385
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v18

    .line 3388
    .local v18, "ccmVersion":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3389
    const-string/jumbo v6, "getCCMVersion"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3388
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3391
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3392
    const/4 v6, 0x0

    aput-object v18, v5, v6

    .line 3391
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3399
    .end local v18    # "ccmVersion":Ljava/lang/String;
    :goto_5e
    return-object v51

    .line 3329
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_151
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 3330
    .local v14, "arrayLength":I
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 3332
    .local v59, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct/range {v23 .. v23}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 3333
    .local v23, "cp":Lcom/samsung/android/knox/keystore/CertificateProfile;
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 3334
    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 3335
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 3336
    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 3338
    const/16 v32, 0x4

    .local v32, "i":I
    :goto_5f
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v32

    if-ge v0, v5, :cond_152

    .line 3339
    aget-object v5, p4, v32

    move-object/from16 v0, v59

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3338
    add-int/lit8 v32, v32, 0x1

    goto :goto_5f

    .line 3340
    :cond_152
    move-object/from16 v0, v59

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 3342
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3343
    add-int/lit8 v6, v14, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v14, -0x1

    aget-object v7, p4, v7

    .line 3342
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v70

    .line 3346
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3347
    const-string/jumbo v6, "installCertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3346
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3349
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3350
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3349
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    .line 3358
    .end local v14    # "arrayLength":I
    .end local v23    # "cp":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .end local v32    # "i":I
    .end local v59    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_153
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 3361
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3362
    const-string/jumbo v6, "deleteCertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3361
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3364
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3365
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3364
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    .line 3373
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_154
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v70

    .line 3376
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3377
    const-string/jumbo v6, "isCCMPolicyEnabledForPackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3376
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3379
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3380
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3379
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5e

    .line 3397
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_155
    const/4 v5, 0x0

    return-object v5

    .line 3405
    .end local v37    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    :pswitch_c
    const-string/jumbo v5, "multi_user_manager_service"

    .line 3404
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 3406
    .local v46, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    if-eqz v46, :cond_0

    .line 3407
    const-string/jumbo v5, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    .line 3409
    const/4 v13, 0x0

    .line 3410
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_156

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_156

    .line 3411
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3414
    .end local v13    # "arg":Z
    :cond_156
    :try_start_43
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_41

    move-result v69

    .line 3419
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3420
    const-string/jumbo v6, "multipleUsersAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3419
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3422
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 3423
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3422
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3482
    .end local v69    # "res":I
    :goto_60
    return-object v51

    .line 3407
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_157
    const-string/jumbo v5, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 3428
    const/4 v13, 0x0

    .line 3429
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_158

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_158

    .line 3430
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3432
    .end local v13    # "arg":Z
    :cond_158
    :try_start_44
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_42

    move-result v70

    .line 3437
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3438
    const-string/jumbo v6, "isUserCreationAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3437
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3440
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3441
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3440
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_60

    .line 3407
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_159
    const-string/jumbo v5, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 3446
    const/4 v13, 0x0

    .line 3447
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_15a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_15a

    .line 3448
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3451
    .end local v13    # "arg":Z
    :cond_15a
    :try_start_45
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_43

    move-result v70

    .line 3456
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3457
    const-string/jumbo v6, "isUserRemovalAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3456
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3459
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3460
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3459
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_60

    .line 3407
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_15b
    const-string/jumbo v5, "multipleUsersSupported"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 3466
    :try_start_46
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_46} :catch_44

    move-result v70

    .line 3470
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3471
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 3470
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3473
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3474
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3473
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_60

    .line 3415
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :catch_41
    move-exception v25

    .line 3416
    .restart local v25    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    return-object v5

    .line 3433
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_42
    move-exception v26

    .line 3434
    .local v26, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return-object v5

    .line 3452
    .end local v26    # "e":Ljava/lang/Exception;
    :catch_43
    move-exception v25

    .line 3453
    .restart local v25    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    return-object v5

    .line 3467
    .end local v25    # "e":Landroid/os/RemoteException;
    :catch_44
    move-exception v25

    .line 3468
    .restart local v25    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    return-object v5

    .line 3479
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_15c
    const/4 v5, 0x0

    return-object v5

    .line 3488
    .end local v46    # "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    :pswitch_d
    const-string/jumbo v5, "device_account_policy"

    .line 3487
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 3489
    .local v38, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v38, :cond_0

    if-eqz p3, :cond_0

    .line 3490
    const-string/jumbo v5, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 3492
    if-eqz p4, :cond_15d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_160

    .line 3493
    :cond_15d
    const/4 v5, 0x0

    return-object v5

    .line 3490
    :cond_15e
    const-string/jumbo v5, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    .line 3508
    if-eqz p4, :cond_15f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_161

    .line 3509
    :cond_15f
    const/4 v5, 0x0

    return-object v5

    .line 3495
    :cond_160
    const/4 v5, 0x0

    aget-object v5, p4, v5

    .line 3496
    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 3495
    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v70

    .line 3499
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3500
    const-string/jumbo v6, "isAccountRemovalAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3499
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3502
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3503
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3502
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3527
    :goto_61
    return-object v51

    .line 3511
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_161
    const/4 v5, 0x0

    aget-object v5, p4, v5

    .line 3512
    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 3511
    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v70

    .line 3515
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3516
    const-string/jumbo v6, "isAccountAdditionAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3515
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3518
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3519
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3518
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_61

    .line 3524
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_162
    const/4 v5, 0x0

    return-object v5

    .line 3532
    .end local v38    # "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    :pswitch_e
    const-string/jumbo v5, "misc_policy"

    .line 3531
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 3533
    .local v45, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v45, :cond_0

    if-eqz p3, :cond_0

    .line 3534
    const-string/jumbo v5, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_163

    .line 3536
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v24

    .line 3539
    .local v24, "current":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3540
    const-string/jumbo v6, "getCurrentLockScreenString"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3539
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3542
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3543
    const/4 v6, 0x0

    aput-object v24, v5, v6

    .line 3542
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3561
    .end local v24    # "current":Ljava/lang/String;
    :goto_62
    return-object v51

    .line 3534
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_163
    const-string/jumbo v5, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 3547
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v70

    .line 3550
    .restart local v70    # "result":Z
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3551
    const-string/jumbo v6, "isNFCStateChangeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3550
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3553
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 3554
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3553
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_62

    .line 3558
    .end local v70    # "result":Z
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_164
    const/4 v5, 0x0

    return-object v5

    .line 3566
    .end local v45    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    :pswitch_f
    const-string/jumbo v5, "email_account_policy"

    .line 3565
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 3567
    .local v41, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    if-eqz v41, :cond_0

    if-eqz p3, :cond_0

    .line 3568
    const-string/jumbo v5, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_166

    .line 3570
    if-eqz p4, :cond_165

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16c

    .line 3571
    :cond_165
    const/4 v5, 0x0

    return-object v5

    .line 3568
    :cond_166
    const-string/jumbo v5, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    .line 3585
    if-eqz p4, :cond_167

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16d

    .line 3586
    :cond_167
    const/4 v5, 0x0

    return-object v5

    .line 3568
    :cond_168
    const-string/jumbo v5, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 3600
    if-eqz p4, :cond_169

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_16e

    .line 3601
    :cond_169
    const/4 v5, 0x0

    return-object v5

    .line 3568
    :cond_16a
    const-string/jumbo v5, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 3614
    if-eqz p4, :cond_16b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_16f

    .line 3615
    :cond_16b
    const/4 v5, 0x0

    return-object v5

    .line 3573
    :cond_16c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3574
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3573
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v33

    .line 3577
    .local v33, "incServer":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3578
    const-string/jumbo v6, "getSecurityIncomingServerPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3577
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3580
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3581
    const/4 v6, 0x0

    aput-object v33, v5, v6

    .line 3580
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3630
    .end local v33    # "incServer":Ljava/lang/String;
    :goto_63
    return-object v51

    .line 3588
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_16d
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3589
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3588
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v58

    .line 3592
    .local v58, "outServer":Ljava/lang/String;
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3593
    const-string/jumbo v6, "getSecurityOutgoingServerPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3592
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3595
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3596
    const/4 v6, 0x0

    aput-object v58, v5, v6

    .line 3595
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_63

    .line 3602
    .end local v58    # "outServer":Ljava/lang/String;
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_16e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3603
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 3602
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v52

    .line 3605
    .restart local v52    # "long_res":J
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3606
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 3605
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3608
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3609
    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3608
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_63

    .line 3616
    .end local v52    # "long_res":J
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_16f
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3617
    const/4 v6, 0x0

    aget-object v6, p4, v6

    .line 3616
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v52

    .line 3619
    .restart local v52    # "long_res":J
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3620
    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 3619
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3622
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3623
    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3622
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    .line 3627
    .end local v52    # "long_res":J
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    :cond_170
    const/4 v5, 0x0

    return-object v5

    .line 3635
    .end local v41    # "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    :pswitch_10
    const-string/jumbo v5, "dualsim_policy"

    .line 3634
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .line 3636
    .local v39, "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    if-eqz v39, :cond_0

    if-eqz p3, :cond_0

    .line 3637
    const-string/jumbo v5, "getpreferredsimslot"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3639
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3638
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v69

    .line 3642
    .restart local v69    # "res":I
    new-instance v51, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .line 3643
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 3644
    const-string/jumbo v6, "getpreferredsimslot"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3642
    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3647
    .local v51, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    .line 3648
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3647
    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3651
    return-object v51

    .line 3117
    .end local v39    # "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    .end local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .end local v69    # "res":I
    .restart local v43    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v54    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v70    # "result":Z
    .restart local v80    # "token":J
    :catchall_1
    move-exception v5

    move-object/from16 v51, v54

    .end local v54    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v51    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto/16 :goto_5b

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_c
        :pswitch_1
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3729
    const/4 v0, 0x0

    return v0
.end method
