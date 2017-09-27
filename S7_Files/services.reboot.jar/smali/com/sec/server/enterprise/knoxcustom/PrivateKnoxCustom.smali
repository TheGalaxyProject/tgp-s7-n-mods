.class public Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field static final KNOX_CUSTOM_TRUE:I = 0x8

.field static final PARAM_BUF_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field static mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->DEBUG:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 90
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private enforceSystemPermission()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    .line 107
    return v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    invoke-direct {v0, p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    .line 83
    :cond_0
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBooleanDataValue(I)Z
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x9

    const/16 v6, 0x8

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 115
    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v1

    .line 116
    .local v1, "value":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    if-nez v1, :cond_0

    .line 120
    return v0

    .line 124
    :cond_0
    const/16 v4, 0x1f

    aget-byte v4, v1, v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 126
    if-ne p1, v6, :cond_1

    .line 127
    aget-byte v4, v1, v6

    if-ne v4, v6, :cond_1

    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 128
    const/4 v0, 0x1

    .line 132
    :cond_1
    if-ne p1, v7, :cond_2

    .line 133
    aget-byte v4, v1, v7

    if-ne v4, v6, :cond_2

    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 134
    const/4 v0, 0x1

    .line 139
    :cond_2
    return v0
.end method

.method private native readParamData()[B
.end method

.method private writeBooleanDataValue(IZ)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "set_true"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/16 v8, 0x1e

    const/16 v7, 0x8

    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "ret":Z
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 145
    .local v3, "value":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 146
    .local v1, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 148
    .local v4, "token":J
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 151
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v0

    .line 152
    .local v0, "previousValue":[B
    const/16 v6, 0x1f

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_2

    .line 154
    aget-byte v6, v0, v7

    aput-byte v6, v3, v7

    .line 155
    aget-byte v6, v0, v9

    aput-byte v6, v3, v9

    .line 156
    aget-byte v6, v0, v8

    aput-byte v6, v3, v8

    .line 164
    :goto_0
    if-eqz p2, :cond_3

    .line 165
    aput-byte v7, v3, p1

    .line 170
    :goto_1
    const/16 v6, 0x1f

    aput-byte v11, v3, v6

    .line 171
    if-ne p1, v7, :cond_0

    .line 172
    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 174
    :cond_0
    if-ne p1, v9, :cond_1

    .line 175
    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 178
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result v2

    .line 179
    .local v2, "ret":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return v2

    .line 159
    .local v2, "ret":Z
    :cond_2
    const/16 v6, 0x17

    aput-byte v6, v3, v7

    .line 160
    aput-byte v10, v3, v9

    .line 161
    aput-byte v10, v3, v8

    goto :goto_0

    .line 167
    :cond_3
    const/4 v6, 0x7

    aput-byte v6, v3, p1

    goto :goto_1
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public isKnoxCustomAutoStartUpEnabled()Z
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "ret":Z
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result v0

    .line 219
    .local v0, "ret":Z
    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/16 v4, 0x8

    .line 190
    const/4 v2, 0x0

    .line 193
    .local v2, "ret":Z
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->enforceSystemPermission()I

    move-result v0

    .line 195
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v1

    .line 197
    .local v1, "currentState":Z
    if-eqz p1, :cond_1

    .line 198
    if-nez v1, :cond_0

    .line 199
    const/4 v3, 0x1

    invoke-direct {p0, v4, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    .line 206
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return v2

    .line 202
    .restart local v2    # "ret":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 203
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    .local v2, "ret":Z
    goto :goto_0
.end method
