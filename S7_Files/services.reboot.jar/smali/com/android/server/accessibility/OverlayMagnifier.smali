.class public final Lcom/android/server/accessibility/OverlayMagnifier;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/OverlayMagnifier$1;,
        Lcom/android/server/accessibility/OverlayMagnifier$2;,
        Lcom/android/server/accessibility/OverlayMagnifier$3;,
        Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I

.field private static final SIZE_LARGE:I = 0x2

.field private static final SIZE_MEDIUM:I = 0x1

.field private static final SIZE_SMALL:I


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mHeight:I

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mMagnifierScale:I

.field private mMagnifierSize:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/OverlayMagnifier;->MY_PID:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    .line 101
    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    .line 102
    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 103
    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    .line 106
    iput-boolean v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    .line 293
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/OverlayMagnifier$2;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 350
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$3;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$3;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 109
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    .line 110
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    .line 111
    const-string/jumbo v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 112
    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    .line 113
    iput-object p2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 117
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050394

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 118
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050397

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v4, v3, v2, v5}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 125
    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 124
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 127
    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 133
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 108
    return-void

    .line 120
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideMagnifier()V
    .locals 3

    .prologue
    .line 217
    sget-object v1, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideMagnifier()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->stopMagnifier()V

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMagnificationSettings()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 306
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 308
    .local v2, "scale":I
    sget-object v4, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMagnificationSettings: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    if-eq v4, v2, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 312
    iput v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    .line 315
    :cond_0
    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    if-eq v4, v3, :cond_1

    .line 316
    const/4 v0, 0x1

    .line 317
    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    .line 318
    packed-switch v3, :pswitch_data_0

    .line 334
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 336
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    iget v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    int-to-float v7, v7

    invoke-interface {v4, v5, v6, v7}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_2
    :goto_1
    return-void

    .line 320
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050394

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 321
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050397

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 325
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050398

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050396

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    .line 329
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050399

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 188
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clearEvents(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    .line 205
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 138
    iget-boolean v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 168
    .end local v0    # "action":I
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 137
    :cond_1
    return-void

    .line 143
    .restart local v0    # "action":I
    :pswitch_1
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: HoverEnter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    .line 149
    .local v2, "spec":Landroid/view/MagnificationSpec;
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "spec":Landroid/view/MagnificationSpec;
    :pswitch_3
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: spec is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 182
    return-void
.end method
