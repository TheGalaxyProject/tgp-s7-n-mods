.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;
.super Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;
.source "NfcOsaifukeitaiLockKDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;
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
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V
    .locals 0
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setExplainedWord(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V
    .locals 0
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setLockSwitch(II)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 85
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 85
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->activity:Landroid/app/Activity;

    .line 83
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 81
    return-void
.end method

.method private setExplainedWord(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 174
    const-string/jumbo v2, "[NfcOsaifukeitaiLockKDI"

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

    .line 176
    move v0, p1

    .line 177
    .local v0, "clflock":I
    move v1, p2

    .line 179
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :cond_0
    if-ne p2, v6, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 185
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 186
    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 172
    :goto_0
    return-void

    .line 188
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    goto :goto_0
.end method

.method private setLockSwitch(II)V
    .locals 7
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 153
    const-string/jumbo v2, "[NfcOsaifukeitaiLockKDI"

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

    .line 155
    move v0, p1

    .line 156
    .local v0, "clflock":I
    move v1, p2

    .line 158
    .local v1, "uimlock":I
    if-ne p1, v6, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_0
    if-ne p2, v6, :cond_1

    .line 162
    const/4 v1, 0x0

    .line 165
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 166
    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 151
    :goto_0
    return-void

    .line 168
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "[NfcOsaifukeitaiLockKDI"

    const-string/jumbo v1, "[S] getLockStateKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "[NfcOsaifukeitaiLockKDI"

    const-string/jumbo v1, "[S] getSwitchBarStateKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 142
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 143
    const-string/jumbo v0, "[NfcOsaifukeitaiLockKDI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NfcOsaifukeitaiLock onActivityResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 145
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    :cond_1
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string/jumbo v0, "[NfcOsaifukeitaiLockKDI"

    const-string/jumbo v1, "[S] onPauseKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    const-string/jumbo v0, "[NfcOsaifukeitaiLockKDI"

    const-string/jumbo v1, "[E] onPauseKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string/jumbo v2, "[NfcOsaifukeitaiLockKDI"

    const-string/jumbo v3, "NfcOsaifukeitaiLockKDI onResume & registerReceiver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 119
    .local v0, "clf_lock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 120
    .local v1, "uim_lock":I
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setLockSwitch(II)V

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setExplainedWord(II)V

    .line 108
    return-void
.end method
