.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "type"    # I

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 2301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2302
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2303
    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    .line 2300
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v7, -0x2

    .line 2313
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2315
    invoke-static {}, Lcom/android/server/VibratorService;->-get8()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2316
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "mIsEnableIntensity is false (onChange)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    return-void

    .line 2319
    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->-get1()[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 2320
    .local v1, "magnitudeMaxLevel":I
    invoke-static {}, Lcom/android/server/VibratorService;->-get2()[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 2321
    .local v3, "touchMagnitudeMaxLevel":I
    if-lt v1, v5, :cond_1

    if-ge v3, v5, :cond_2

    .line 2322
    :cond_1
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2323
    const-string/jumbo v6, ", touchMagnitudeMaxLevel(onChange) : "

    .line 2322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    return-void

    .line 2327
    :cond_2
    iget v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 2312
    :goto_0
    return-void

    .line 2329
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2330
    .local v0, "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v3, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_1
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set7(Lcom/android/server/VibratorService;I)I

    .line 2332
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Feedback magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
    .restart local v0    # "magnitudeLevel":I
    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->-get2()[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_1

    .line 2337
    .end local v0    # "magnitudeLevel":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2338
    .restart local v0    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_2
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set0(Lcom/android/server/VibratorService;I)I

    .line 2340
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Call magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2338
    .restart local v0    # "magnitudeLevel":I
    :cond_4
    invoke-static {}, Lcom/android/server/VibratorService;->-get1()[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_2

    .line 2345
    .end local v0    # "magnitudeLevel":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2346
    .restart local v0    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_6

    .end local v0    # "magnitudeLevel":I
    :goto_3
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set6(Lcom/android/server/VibratorService;I)I

    .line 2348
    invoke-static {}, Lcom/android/server/VibratorService;->-get4()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2349
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->-get10(Lcom/android/server/VibratorService;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->-set1(Lcom/android/server/VibratorService;I)I

    .line 2352
    :cond_5
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Notification magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2346
    .restart local v0    # "magnitudeLevel":I
    :cond_6
    invoke-static {}, Lcom/android/server/VibratorService;->-get1()[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_3

    .line 2357
    .end local v0    # "magnitudeLevel":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get9(Lcom/android/server/VibratorService;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2358
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "mIsSupportedE is false (onChange)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    return-void

    .line 2361
    :cond_7
    invoke-static {}, Lcom/android/server/VibratorService;->-get0()[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 2362
    .local v2, "touchForceMagnitudeMaxLevel":I
    if-ge v2, v5, :cond_8

    .line 2363
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    return-void

    .line 2366
    :cond_8
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2367
    .restart local v0    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v2, :cond_9

    .end local v0    # "magnitudeLevel":I
    :goto_4
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set2(Lcom/android/server/VibratorService;I)I

    .line 2370
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Force magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2367
    .restart local v0    # "magnitudeLevel":I
    :cond_9
    invoke-static {}, Lcom/android/server/VibratorService;->-get0()[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_4

    .line 2327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reload()V
    .locals 4

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2308
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-get12()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2306
    return-void
.end method
