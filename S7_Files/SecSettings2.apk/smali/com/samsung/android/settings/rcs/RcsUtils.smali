.class public Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 86
    if-nez p1, :cond_0

    .line 87
    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "The given context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/support_omc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    .line 100
    new-instance v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 85
    return-void

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnabledRcsFromMps(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 214
    const/4 v5, 0x0

    .line 220
    .local v5, "value":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    .line 222
    .local v3, "parser":Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string/jumbo v6, "Settings.IMSSetting"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 223
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 224
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Settings.IMSSetting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v9

    .line 227
    :cond_0
    const-string/jumbo v6, "Setting"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 228
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 229
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Setting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v9

    .line 233
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 235
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 238
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEnabledRcsFromMps: Found matched node for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "RCS"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 242
    if-eqz v4, :cond_3

    .line 243
    const-string/jumbo v6, "EnableRCS"

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 249
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    :cond_2
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: EnableRCS is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-object v9

    .line 245
    .local v5, "value":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No RCS node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-object v9

    .line 256
    .local v5, "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 233
    .local v5, "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v4    # "tempNode":Lorg/w3c/dom/Node;
    :cond_6
    return-object v9
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 79
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    return-object v4

    .line 109
    :cond_1
    return-object v0
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 120
    const/4 v5, 0x0

    .line 122
    .local v5, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: MCCMNC is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v8

    .line 127
    :cond_1
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    .line 129
    .local v3, "parser":Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string/jumbo v6, "GeneralInfo"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 130
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_2

    .line 131
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No GenralInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v8

    .line 135
    :cond_2
    const-string/jumbo v6, "NetworkInfo"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 136
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_3

    .line 137
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No NetworkInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v8

    .line 141
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 143
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "MCCMNC"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 146
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkName: Found matched network name by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .end local v4    # "tempNode":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 141
    .restart local v4    # "tempNode":Lorg/w3c/dom/Node;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public isOmcDevice()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    return v0
.end method

.method public isRcsEnabledInCsc()Z
    .locals 9

    .prologue
    .line 172
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, "cscRcsEnabled":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_UseMpsForImsSetting"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 174
    .local v1, "cscUseMpsForIms":Z
    iget-object v6, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v3

    .line 176
    .local v3, "isRcsUiForOpen":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: cscRcsEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), useMpsForIms("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), isRcsUiForOpen("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move v5, v0

    .line 183
    .local v5, "result":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/rcs/RcsUtils;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "networkName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 188
    .local v2, "customerRcsEnabled":Ljava/lang/Boolean;
    if-nez v4, :cond_1

    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, "result":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not availble(couldn\'t find matched network name)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v2    # "customerRcsEnabled":Ljava/lang/Boolean;
    .end local v4    # "networkName":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_0
    :goto_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS availability is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v5

    .line 191
    .restart local v2    # "customerRcsEnabled":Ljava/lang/Boolean;
    .restart local v4    # "networkName":Ljava/lang/String;
    .local v5, "result":Z
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 192
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnabledRcsFromMps(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 194
    .local v2, "customerRcsEnabled":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, "result":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not available(couldn\'t find feature tag)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .local v5, "result":Z
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 199
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS service is available(found feature tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
