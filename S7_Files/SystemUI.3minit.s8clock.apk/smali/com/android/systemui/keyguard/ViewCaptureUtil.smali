.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private final DEX_FILE_NAME:Ljava/lang/String;

.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private mAm:Landroid/app/ActivityManager;

.field private mCaptureOrientation:I

.field private mClockBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private final mHazardActivity:[Ljava/lang/String;

.field private mIsCovered:Z

.field private mIsDeskMode:Z

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftOfLeft:I

.field private mLeftOfRight:I

.field private mMobileKeyboardIsCovered:Z

.field private mNewCapture:Z

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRootHeight:I

.field private mRootWidth:I

.field private mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field private mTopOfClock:I

.field private mTopOfLeft:I

.field private mTopOfRight:I

.field private final mWallpaperActivity:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/ViewCaptureUtil;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCaptureOrientation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockBmp"    # Landroid/graphics/Bitmap;
    .param p3, "leftBmp"    # Landroid/graphics/Bitmap;
    .param p4, "rightBmp"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v1, "lockscreen_capture_port.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "lockscreen_capture_land.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "lockscreen_capture_port_keyboard.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "s_view_cover_capture.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "lockscreen_capture_dex.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->DEX_FILE_NAME:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    .line 57
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsDeskMode:Z

    .line 62
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 63
    const-string/jumbo v2, "com.sec.android.gallery3d"

    aput-object v2, v1, v4

    .line 64
    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    aput-object v2, v1, v5

    .line 67
    const-string/jumbo v2, "com.android.keyguard.wallpaper.KeyguardWallpaperPreviewActivity"

    aput-object v2, v1, v6

    .line 69
    const-string/jumbo v2, "com.android.settings.SubSettings"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 70
    const-string/jumbo v2, "com.sec.android.wallpapercropper2.SViewCoverCropActivity"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 71
    const-string/jumbo v2, "com.samsung.android.themestore"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 73
    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser.WallpaperGridActivity"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 75
    const-string/jumbo v2, "com.android.documentsui.FilesActivity"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 62
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    .line 77
    new-array v1, v6, [Ljava/lang/String;

    .line 78
    const-string/jumbo v2, "com.sec.android.app.myfiles.common.MainActivity"

    aput-object v2, v1, v4

    .line 79
    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryActivity"

    aput-object v2, v1, v5

    .line 77
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    .line 86
    new-instance v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    .line 88
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockBmp"    # Landroid/graphics/Bitmap;
    .param p3, "leftBmp"    # Landroid/graphics/Bitmap;
    .param p4, "rightBmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 135
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    if-gtz v3, :cond_1

    .line 136
    :cond_0
    const-string/jumbo v3, "ViewCaptureUtil"

    const-string/jumbo v4, "root view is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v6

    .line 140
    :cond_1
    if-nez p2, :cond_2

    .line 141
    const-string/jumbo v3, "ViewCaptureUtil"

    const-string/jumbo v4, "clockBmp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v6

    .line 145
    :cond_2
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 149
    .local v2, "leftOfClock":I
    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    int-to-float v4, v4

    invoke-virtual {v1, p2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    if-eqz p3, :cond_3

    .line 152
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    :cond_3
    if-eqz p4, :cond_4

    .line 156
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    int-to-float v4, v4

    invoke-virtual {v1, p4, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    :cond_4
    return-object v0
.end method

.method private clearCaptures()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 226
    :cond_2
    return-void
.end method

.method private getCoverState()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method private static getSavePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 418
    const-string/jumbo v0, "/storage/emulated/"

    .line 419
    .local v0, "LOCK_PREVIEW_PATH":Ljava/lang/String;
    const-string/jumbo v1, "/Android/data/com.android.systemui/cache/"

    .line 421
    .local v1, "LOCK_PREVIEW_PATH2":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 422
    .local v2, "currentUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getViewLocation(Landroid/view/View;)[I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 405
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 407
    .local v0, "pos":[I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 414
    :goto_0
    return-object v0

    .line 411
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_2

    .line 197
    const-string/jumbo v0, "s_view_cover_capture.png"

    .line 223
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 199
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 214
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_4

    .line 215
    const-string/jumbo v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "lockscreen_capture_land.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_3

    .line 207
    const-string/jumbo v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "lockscreen_capture_port.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "lockscreen_capture_port.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string/jumbo v4, "ViewCaptureUtil"

    const-string/jumbo v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 169
    .local v2, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "SCREENSHOT_FILE_PATH":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    const-string/jumbo v4, "ViewCaptureUtil"

    const-string/jumbo v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 162
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 176
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 177
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveScreenshot exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 179
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    throw v4

    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 176
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topView"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 95
    :cond_0
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v4

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_3

    .line 113
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 114
    if-eqz p2, :cond_2

    .line 115
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 122
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCaptureOrientation:I

    .line 125
    return-object v0

    .line 119
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_0
.end method


# virtual methods
.method public captureScreen(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZII)V
    .locals 6
    .param p1, "clockView"    # Landroid/view/View;
    .param p2, "left"    # Landroid/view/View;
    .param p3, "right"    # Landroid/view/View;
    .param p4, "isCover"    # Z
    .param p5, "isDeskMode"    # Z
    .param p6, "windowWidth"    # I
    .param p7, "windowHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 349
    iput-boolean p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    .line 350
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    .line 354
    :cond_0
    if-nez p1, :cond_1

    .line 355
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "clockView null, stop capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 360
    :cond_1
    :try_start_0
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "Capture the lockscreen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 363
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 364
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    .line 365
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 367
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 368
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    .line 369
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    .line 370
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    .line 371
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 377
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 378
    invoke-direct {p0, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    .line 379
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    .line 380
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    .line 381
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 388
    :goto_1
    iput p7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    .line 389
    iput p6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    .line 348
    .end local v1    # "pos":[I
    :goto_2
    return-void

    .line 373
    .restart local v1    # "pos":[I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 374
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "left shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v1    # "pos":[I
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    .line 400
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    goto :goto_2

    .line 383
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "pos":[I
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 384
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "right shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
