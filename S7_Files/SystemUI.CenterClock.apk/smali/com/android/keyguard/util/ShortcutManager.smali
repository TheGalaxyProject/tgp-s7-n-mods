.class public Lcom/android/keyguard/util/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/ShortcutManager$1;,
        Lcom/android/keyguard/util/ShortcutManager$2;,
        Lcom/android/keyguard/util/ShortcutManager$3;,
        Lcom/android/keyguard/util/ShortcutManager$4;,
        Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;,
        Lcom/android/keyguard/util/ShortcutManager$ShortcutData;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field private static final SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field mCallback:Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconScaleRatio:F

.field private final mIconSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/content/pm/PackageManager;

.field mSb:Ljava/lang/StringBuilder;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/util/ShortcutManager;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/util/ShortcutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/util/ShortcutManager;->handleUpdateShortcuts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/util/ShortcutManager;I)V
    .locals 0
    .param p1, "th"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/util/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/util/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "th"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.contacts"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.contacts"

    aput-object v1, v0, v4

    .line 66
    sput-object v0, Lcom/android/keyguard/util/ShortcutManager;->SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "com.android.calendar"

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    aput-object v1, v0, v3

    .line 74
    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    aput-object v1, v0, v4

    .line 75
    const-string/jumbo v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    aput-object v1, v0, v5

    .line 71
    sput-object v0, Lcom/android/keyguard/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 78
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const/high16 v1, 0x800000

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 82
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "callback"    # Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v0, v2, [Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    .line 106
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ShortcutManager$1;-><init>(Lcom/android/keyguard/util/ShortcutManager;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 117
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ShortcutManager$2;-><init>(Lcom/android/keyguard/util/ShortcutManager;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 131
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ShortcutManager$3;-><init>(Lcom/android/keyguard/util/ShortcutManager;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/util/ShortcutManager$4;-><init>(Lcom/android/keyguard/util/ShortcutManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 191
    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->shortuct_icon_default_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconSize:I

    .line 194
    iput-object p2, p0, Lcom/android/keyguard/util/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    iput-object p3, p0, Lcom/android/keyguard/util/ShortcutManager;->mCallback:Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->shortcut_icon_utilization_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconScaleRatio:F

    .line 203
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    new-instance v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    invoke-direct {v1, p0, v4}, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;-><init>(Lcom/android/keyguard/util/ShortcutManager;Lcom/android/keyguard/util/ShortcutManager$ShortcutData;)V

    aput-object v1, v0, v11

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v5, "lock_application_shortcut"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 210
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v8, "bootFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    .line 188
    return-void
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 299
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    .line 301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 233
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 426
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 425
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 427
    .local v0, "canSkipBouncer":Z
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 428
    .local v1, "secure":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v2, Lcom/android/keyguard/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/android/keyguard/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getSettingValues()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 244
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/keyguard/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 247
    .local v3, "ret":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 249
    const-string/jumbo v6, "ShortcutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSettingValues("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/android/keyguard/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v10

    iput-object v9, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 254
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v11

    iput-object v9, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 255
    return v3

    .line 258
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_6

    const/4 v6, 0x4

    if-ge v1, v6, :cond_6

    .line 259
    const-string/jumbo v6, "1"

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 260
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 262
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 263
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 264
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 269
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    div-int/lit8 v7, v1, 0x2

    aget-object v6, v6, v7

    iput-object v0, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 270
    if-eqz v0, :cond_3

    .line 271
    const/4 v3, 0x1

    .line 258
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v6, "ShortcutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    div-int/lit8 v7, v1, 0x2

    aget-object v6, v6, v7

    iput-object v9, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    goto :goto_1

    .line 281
    .end local v1    # "i":I
    .end local v5    # "values":[Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v10

    iput-object v9, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 282
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v11

    iput-object v9, v6, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 284
    :cond_6
    return v3
.end method

.method private getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    .line 311
    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v2

    .line 312
    .local v2, "squicleMode":Z
    iget-object v6, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    .line 313
    if-eqz v2, :cond_1

    move v4, v5

    .line 312
    :goto_0
    invoke-virtual {p1, v6, v5, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 317
    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    :cond_0
    iget v4, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconScaleRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 324
    .local v3, "width":I
    iget v4, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/util/ShortcutManager;->mIconScaleRatio:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 326
    .local v1, "height":I
    invoke-direct {p0, v0, v3, v1}, Lcom/android/keyguard/util/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    return-object v4

    .line 314
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleUpdateShortcuts()V
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/keyguard/util/ShortcutManager;->getSettingValues()Z

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method private isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 399
    if-nez p1, :cond_0

    .line 400
    return v2

    .line 403
    :cond_0
    const-string/jumbo v0, "com.sec.android.app.camera"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_1
    return v2
.end method

.method private isSamsungPhonePackage(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 411
    if-nez p1, :cond_0

    .line 412
    return v2

    .line 415
    :cond_0
    sget-object v3, Lcom/android/keyguard/util/ShortcutManager;->SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 416
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    const-string/jumbo v5, "com.android.dialer.DialtactsActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 416
    if-eqz v5, :cond_1

    .line 418
    const/4 v1, 0x1

    return v1

    .line 415
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private resetShortcut(I)V
    .locals 3
    .param p1, "th"    # I

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->enabled:Z

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mCallback:Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    .line 287
    return-void
.end method

.method private updateShortcut(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "th"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 330
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/util/ShortcutManager$5;-><init>(Lcom/android/keyguard/util/ShortcutManager;ILandroid/content/ComponentName;)V

    .line 381
    .local v0, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/content/ComponentName;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method


# virtual methods
.method public getApplicationLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 533
    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string/jumbo v0, "Shortcut"

    return-object v0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "th"    # I

    .prologue
    .line 432
    if-gez p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    .line 433
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const-string/jumbo v1, "ShortcutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "th = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is camera package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/keyguard/util/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_3

    .line 445
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    return-object v0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lcom/android/keyguard/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 454
    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShortcutHintText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "th"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_tts_shortcut_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasShortcutForLeft()Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public hasShortcutForRight()Z
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public isLeftShortcutForCamera()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForLiveIcon()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForPhone()Z
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForCamera()Z
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForLiveIcon()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForPhone()Z
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isShortcutForLiveIcion(I)Z
    .locals 8
    .param p1, "th"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 508
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    .line 509
    return v3

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "cn":Ljava/lang/String;
    sget-object v4, Lcom/android/keyguard/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 513
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 514
    return v7

    .line 512
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->getClockPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 518
    return v7

    .line 521
    :cond_3
    return v3
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 581
    return-void
.end method

.method public updateShortcuts()V
    .locals 2

    .prologue
    const/16 v1, 0x16b3

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    return-void
.end method

.method public updateShortcutsIcon(I)V
    .locals 4
    .param p1, "th"    # I

    .prologue
    .line 550
    new-instance v0, Lcom/android/keyguard/util/ShortcutManager$6;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/util/ShortcutManager$6;-><init>(Lcom/android/keyguard/util/ShortcutManager;I)V

    .line 577
    .local v0, "iconUpdateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/keyguard/util/ShortcutManager;->mShortcuts:[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 549
    :cond_0
    return-void
.end method
