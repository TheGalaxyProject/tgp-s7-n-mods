.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;
.super Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;
.source "NfcOsaifukeitaiLockSBM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mFelicaLockResultCode:I

.field private mLockState:Z

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mbSwitchBar:Z

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;II)V
    .locals 0
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setExplainedWord(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;II)V
    .locals 0
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setLockSwitch(II)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mFelicaLockResultCode:I

    .line 83
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mFelicaLockResultCode:I

    .line 83
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->activity:Landroid/app/Activity;

    .line 81
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 79
    return-void
.end method

.method private setExplainedWord(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 167
    const-string/jumbo v2, "[NfcOsaifukeitaiLockSBM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setExplainedWord :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move v0, p1

    .line 170
    .local v0, "clflock":I
    move v1, p2

    .line 172
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :cond_0
    if-ne p2, v6, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 179
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v5, :cond_2

    .line 180
    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    .line 165
    :goto_0
    return-void

    .line 182
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    goto :goto_0
.end method

.method private setLockSwitch(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 146
    const-string/jumbo v2, "[NfcOsaifukeitaiLockSBM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockSwitch  :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move v0, p1

    .line 149
    .local v0, "clflock":I
    move v1, p2

    .line 151
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :cond_0
    if-ne p2, v6, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 158
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v5, :cond_2

    .line 159
    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    .line 144
    :goto_0
    return-void

    .line 161
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v0, "[NfcOsaifukeitaiLockSBM]"

    const-string/jumbo v1, "[S] getLockStateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mLockState:Z

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "[NfcOsaifukeitaiLockSBM]"

    const-string/jumbo v1, "[S] getSwitchBarStateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z

    return v0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string/jumbo v0, "[NfcOsaifukeitaiLockSBM]"

    const-string/jumbo v1, "[S] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const-string/jumbo v0, "[NfcOsaifukeitaiLockSBM]"

    const-string/jumbo v1, "[E] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string/jumbo v2, "[NfcOsaifukeitaiLockSBM]"

    const-string/jumbo v3, "NfcOsaifukeitaiLockSBM onResume & registerReceiver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 133
    .local v0, "clf_lock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 134
    .local v1, "uim_lock":I
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setLockSwitch(II)V

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setExplainedWord(II)V

    .line 123
    return-void
.end method
