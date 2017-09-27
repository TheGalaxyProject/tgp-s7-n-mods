.class Lcom/android/server/policy/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4184
    const v0, 0x10203db

    const v1, 0x10203dc

    const v2, 0x10203dd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 4199
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 4200
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 4197
    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 4211
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 4206
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4221
    const v5, 0x109006e

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 4223
    .local v4, "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    .line 4226
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 4227
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_4

    .line 4228
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4233
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 4235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4236
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4238
    if-ne v0, v6, :cond_0

    .line 4239
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get27()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4240
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4241
    const v5, 0x1020507

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4242
    .local v3, "spacer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4243
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4246
    .end local v3    # "spacer":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_2

    .line 4247
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 4227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    .line 4233
    goto :goto_1

    .line 4261
    .end local v1    # "itemView":Landroid/view/View;
    :cond_4
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4216
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 4290
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4297
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 4299
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4302
    .local v7, "index":I
    const-string/jumbo v0, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick() of Silentmode button = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " & dismissing dialog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    const-string/jumbo v3, "isSettingsChangesAllowed"

    .line 4305
    .local v3, "queryValue":Ljava/lang/String;
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4306
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4307
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 4309
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4310
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4312
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v2, "restricted by MDM "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4316
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4296
    :goto_0
    return-void

    .line 4315
    :catchall_0
    move-exception v0

    .line 4316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4315
    throw v0

    .line 4321
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 4322
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 4274
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 4282
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 4286
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 4278
    const/4 v0, 0x1

    return v0
.end method

.method public updateRingerMode()V
    .locals 5

    .prologue
    .line 4265
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 4266
    .local v2, "selectedIndex":I
    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    .line 4267
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 4268
    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4269
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 4270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4269
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 4264
    .end local v1    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 4293
    return-void
.end method
