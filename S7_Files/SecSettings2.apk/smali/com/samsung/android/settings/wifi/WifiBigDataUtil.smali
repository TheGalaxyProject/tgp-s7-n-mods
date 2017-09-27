.class public Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
.super Ljava/lang/Object;
.source "WifiBigDataUtil.java"


# static fields
.field private static final DBG:Z

.field private static final FEATURE_NAME:[Ljava/lang/String;

.field public static final GSIM_ENABLE_FEATURE:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    .line 36
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BEHAVIOR_FLOW_LOGGING"

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "AOST"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "WPST"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "GOWP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public insertBigdataLog(ILjava/lang/String;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 64
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "bigdata"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v2, "feature"

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 62
    return-void
.end method

.method public insertLog(ILjava/lang/String;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "extraData"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v2, 0x3

    if-ge p1, v2, :cond_0

    if-nez p2, :cond_2

    .line 75
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiBigDataUtil"

    const-string/jumbo v3, "insertLog failed, feature or extra data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return-void

    .line 79
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 73
    return-void
.end method

.method public insertLogForUx(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 108
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiBigDataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertLogForUx - feature is not supported. id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 113
    .local v0, "logId":I
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 107
    return-void
.end method

.method public insertLogForUx(II)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "value"    # I

    .prologue
    .line 89
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiBigDataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertLogForUx - feature is not supported. id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 94
    .local v0, "logId":I
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public insertLogForUxWithResValue(II)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "valueResId"    # I

    .prologue
    .line 98
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiBigDataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLogForUx - feature is not supported. id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 103
    .local v0, "logId":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 104
    .local v1, "logValue":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 97
    return-void
.end method
