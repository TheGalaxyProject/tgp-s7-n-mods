.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$1;,
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_EDGE_COLLAPSE:I = 0x3

.field public static final MODE_EDGE_UNITE:I = 0x4

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"

.field private static final segments70:[[F

.field private static final segments80:[[F

.field private static final segmentsSIn33:[[F


# instance fields
.field private mAlphaLoc:I

.field private mCollapseLoc:I

.field private mCreatedResources:Z

.field private mDeviceDimLoc:I

.field private final mDeviceDimVec:[F

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mFeather:I

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacity:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

.field private mSaturationLoc:I

.field private mScaleLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTex1D:[I

.field private mTex1DGenerated:Z

.field private mTex1DLoc:I

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I

.field private sine80Tex:[B


# direct methods
.method static synthetic -get0(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLSurface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/ColorFade;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/ColorFade;)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/ColorFade;)Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/ColorFade;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/ColorFade;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/ColorFade;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/ColorFade;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/ColorFade;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/ColorFade;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 179
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/ColorFade;->segments70:[[F

    .line 180
    new-array v0, v5, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/display/ColorFade;->segmentsSIn33:[[F

    .line 234
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    .line 235
    new-array v1, v2, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_9

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 234
    sput-object v0, Lcom/android/server/display/ColorFade;->segments80:[[F

    .line 71
    return-void

    .line 179
    nop

    :array_0
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ee66666    # 0.45f
    .end array-data

    :array_1
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f4ccccd    # 0.8f
        0x3f6872b0    # 0.908f
    .end array-data

    :array_2
    .array-data 4
        0x3f6872b0    # 0.908f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data

    .line 180
    :array_3
    .array-data 4
        0x0
        0x3a83126f    # 0.001f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_4
    .array-data 4
        0x3ea3d70a    # 0.32f
        0x3f170a3d    # 0.59f
        0x3f800000    # 1.0f
    .end array-data

    .line 234
    :array_5
    .array-data 4
        0x0
        0x0
        0x3e47ae14    # 0.195f
    .end array-data

    :array_6
    .array-data 4
        0x3e47ae14    # 0.195f
        0x3ef5c28f    # 0.48f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_7
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f55c28f    # 0.835f
        0x3f628f5c    # 0.885f
    .end array-data

    .line 235
    :array_8
    .array-data 4
        0x3f628f5c    # 0.885f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_9
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTex1D:[I

    .line 115
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 116
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 123
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDeviceDimVec:[F

    .line 130
    invoke-static {v3}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 131
    invoke-static {v3}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 208
    const/16 v0, 0xeb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->sine80Tex:[B

    .line 1016
    new-instance v0, Lcom/android/server/display/ColorFade$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorFade$1;-><init>(Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .line 169
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 170
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 173
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 174
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 168
    return-void

    .line 208
    :array_0
    .array-data 1
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xct
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x10t
        0x12t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x17t
        0x18t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x20t
        0x20t
        0x21t
        0x23t
        0x23t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2bt
        0x2bt
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x35t
        0x36t
        0x37t
        0x38t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3ft
        0x40t
        0x41t
        0x43t
        0x44t
        0x44t
        0x46t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4dt
        0x4et
        0x4ft
        0x51t
        0x52t
        0x54t
        0x54t
        0x56t
        0x58t
        0x59t
        0x5at
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x61t
        0x63t
        0x64t
        0x65t
        0x67t
        0x68t
        0x69t
        0x6bt
        0x6ct
        0x6et
        0x6ft
        0x71t
        0x72t
        0x73t
        0x75t
        0x76t
        0x77t
        0x79t
        0x7at
        0x7bt
        0x7dt
        0x7et
        0x7ft
        -0x80t
        -0x7et
        -0x7ct
        -0x7bt
        -0x7at
        -0x78t
        -0x76t
        -0x74t
        -0x73t
        -0x71t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6at
        -0x68t
        -0x67t
        -0x66t
        -0x64t
        -0x63t
        -0x62t
        -0x60t
        -0x5ft
        -0x5et
        -0x5ct
        -0x5bt
        -0x59t
        -0x58t
        -0x57t
        -0x55t
        -0x55t
        -0x54t
        -0x51t
        -0x51t
        -0x4ft
        -0x4et
        -0x4ct
        -0x4ct
        -0x4at
        -0x48t
        -0x47t
        -0x46t
        -0x44t
        -0x43t
        -0x42t
        -0x41t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x35t
        -0x34t
        -0x33t
        -0x31t
        -0x31t
        -0x2ft
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x23t
        -0x23t
        -0x22t
        -0x21t
        -0x20t
        -0x1ft
        -0x1ft
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x17t
        -0x15t
        -0x15t
        -0x14t
        -0x12t
        -0x12t
        -0x11t
        -0x10t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x9t
        -0x8t
        -0x8t
        -0x7t
        -0x6t
        -0x6t
        -0x5t
        -0x4t
        -0x4t
        -0x3t
        -0x2t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private attachEglContext()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 1168
    return v4

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    const-string/jumbo v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 1172
    return v4

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "ColorFade : attachEglContext"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1178
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 882
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    return v3

    .line 886
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 888
    const-string/jumbo v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 889
    return v3

    .line 891
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 894
    :cond_2
    new-instance v8, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v8, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 895
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 898
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    .line 897
    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 899
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 900
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 902
    :try_start_3
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 903
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 907
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v0, v10, :cond_4

    .line 908
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDeviceDimVec:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 909
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDeviceDimVec:[F

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 916
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 917
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 918
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 919
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 922
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 923
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 925
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 928
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v0, v10, :cond_5

    .line 930
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->setupGradientTexture()Z

    .line 934
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "ColorFade : captureScreenshotTextureAndSetViewport"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 937
    return v9

    .line 901
    :catchall_0
    move-exception v0

    .line 902
    :try_start_4
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 903
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 901
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 924
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    .line 925
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 924
    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 1199
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .prologue
    .line 1203
    const/4 v1, 0x0

    .line 1205
    .local v1, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 1206
    if-eqz p1, :cond_0

    .line 1207
    const-string/jumbo v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    return v1
.end method

.method private createEglContext()Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 961
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 962
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 963
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 964
    const-string/jumbo v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 965
    return v2

    .line 968
    :cond_0
    new-array v9, v11, [I

    .line 969
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 971
    const-string/jumbo v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 972
    return v2

    .line 976
    .end local v9    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 977
    const/16 v0, 0xb

    new-array v1, v0, [I

    .local v1, "eglConfigAttribList":[I
    fill-array-data v1, :array_0

    .line 986
    new-array v6, v10, [I

    .line 987
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 988
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 989
    array-length v5, v3

    move v4, v2

    move v7, v2

    .line 988
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 990
    const-string/jumbo v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 991
    return v2

    .line 993
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 996
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 998
    const/16 v0, 0x3098

    .line 999
    const/16 v4, 0x3038

    .line 997
    filled-new-array {v0, v11, v4}, [I

    move-result-object v8

    .line 1001
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 1002
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 1001
    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 1003
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 1004
    const-string/jumbo v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 1005
    return v2

    .line 1010
    .end local v8    # "eglContextAttribList":[I
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v2, "ColorFade : createEglContext"

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1013
    return v10

    .line 977
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1097
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1100
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    .line 1101
    new-array v0, v6, [I

    .line 1102
    const/16 v1, 0x3038

    aput v1, v0, v4

    .line 1105
    .local v0, "eglSurfaceAttribList":[I
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 1107
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    .line 1108
    const-string/jumbo v1, "eglCreateWindowSurface"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 1109
    return v4

    .line 1114
    .end local v0    # "eglSurfaceAttribList":[I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v2, "ColorFade : createEglSurface"

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1117
    return v6
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 1189
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1190
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1191
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .locals 8

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 1050
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 1054
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1059
    :try_start_1
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1060
    const v6, 0x20004

    .line 1064
    .local v6, "flags":I
    :goto_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 1065
    const-string/jumbo v2, "ColorFade"

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 1066
    const/4 v5, -0x1

    .line 1064
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    .end local v6    # "flags":I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 1075
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 1076
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    if-nez v0, :cond_2

    .line 1079
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1080
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1079
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->setOnResolutionChangedCb(Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1089
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "ColorFade : createSurface"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1092
    const/4 v0, 0x1

    return v0

    .line 1062
    :cond_3
    const/16 v6, 0x404

    .restart local v6    # "flags":I
    goto :goto_0

    .line 1067
    .end local v6    # "flags":I
    :catch_0
    move-exception v7

    .line 1068
    .local v7, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string/jumbo v0, "ColorFade"

    const-string/jumbo v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1069
    const/4 v0, 0x0

    .line 1085
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1069
    return v0

    .line 1084
    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    .line 1085
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1084
    throw v0
.end method

.method private destroyEglSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1121
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    const-string/jumbo v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 1125
    :cond_0
    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 1120
    :cond_1
    return-void
.end method

.method private destroyGLBuffers()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 522
    const-string/jumbo v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 520
    return-void
.end method

.method private destroyGLShaders()V
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 457
    const-string/jumbo v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 455
    return-void
.end method

.method private destroyGradientTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTex1DGenerated:Z

    if-eqz v0, :cond_0

    .line 942
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTex1DGenerated:Z

    .line 943
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTex1D:[I

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 944
    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 940
    :cond_0
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 950
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 951
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 952
    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 948
    :cond_0
    return-void
.end method

.method private destroySurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 1132
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 1133
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1136
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1140
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 1142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 1129
    :cond_0
    return-void

    .line 1137
    :catchall_0
    move-exception v0

    .line 1138
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1137
    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 1184
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 1183
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1181
    :cond_0
    return-void
.end method

.method private drawEdgeCollapse(F)V
    .locals 13
    .param p1, "saturation"    # F

    .prologue
    const v12, 0x8892

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 682
    sub-float v0, v4, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorFade;->interpol_SineInOut70Interpolation_getStep(F)F

    move-result v8

    .line 683
    .local v8, "edgeCollapseStep":F
    sub-float v0, v4, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorFade;->interpol_SineIn33Interpolation_getStep(F)F

    move-result v6

    .line 689
    .local v6, "alphaStep":F
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 691
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    invoke-static {v0, v11, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 692
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v11, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 693
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDeviceDimLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDeviceDimVec:[F

    invoke-static {v0, v11, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 694
    iget v0, p0, Lcom/android/server/display/ColorFade;->mCollapseLoc:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 695
    iget v0, p0, Lcom/android/server/display/ColorFade;->mAlphaLoc:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 699
    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, p1}, Ljava/lang/Float;-><init>(F)V

    .line 700
    .local v10, "sat_val":Ljava/lang/Float;
    new-instance v7, Ljava/lang/Float;

    const-string/jumbo v0, "0.0"

    invoke-direct {v7, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 701
    .local v7, "des_sat_val":Ljava/lang/Float;
    invoke-virtual {v10, v7}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v9

    .line 703
    .local v9, "retval":I
    if-nez v9, :cond_0

    .line 704
    invoke-static {v2, v2, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 705
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 706
    return-void

    .line 709
    :cond_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 710
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 713
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 714
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 715
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 717
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v11

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 718
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 719
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 721
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 724
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 725
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 681
    return-void
.end method

.method private drawEdgeUnite(F)V
    .locals 14
    .param p1, "saturation"    # F

    .prologue
    const v5, 0x3eb33333    # 0.35f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 733
    const v0, 0x3e4ccccd    # 0.2f

    .line 734
    sub-float v0, p1, v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float v9, v0, v1

    .line 735
    .local v9, "feather":F
    cmpg-float v0, v9, v2

    if-gez v0, :cond_0

    .line 736
    const/4 v9, 0x0

    .line 739
    :cond_0
    sub-float v0, v4, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorFade;->interpol_SineInOut80Interpolation_getStep(F)F

    move-result v0

    sub-float v7, v4, v0

    .line 740
    .local v7, "edgeUniteStep":F
    const v0, 0x3f266666    # 0.65f

    mul-float/2addr v0, v7

    add-float v7, v0, v5

    .line 741
    sub-float v0, v4, v9

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorFade;->interpol_SineInOut80Interpolation_getStep(F)F

    move-result v0

    mul-float v8, v5, v0

    .line 743
    .local v8, "edgeUniteStepFeather":F
    cmpg-float v0, v7, v5

    if-gez v0, :cond_1

    .line 738
    const v7, 0x3eb33333    # 0.35f

    .line 747
    :cond_1
    const v0, 0x3e6b851f    # 0.23f

    .line 750
    sub-float v0, p1, v0

    const v1, 0x3f451eb8    # 0.77f

    div-float v10, v0, v1

    .line 751
    .local v10, "opacity":F
    cmpg-float v0, v10, v2

    if-gez v0, :cond_2

    const/4 v10, 0x0

    .line 758
    :cond_2
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 760
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    invoke-static {v0, v13, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 761
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v13, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 762
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDeviceDimLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDeviceDimVec:[F

    invoke-static {v0, v13, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 763
    iget v0, p0, Lcom/android/server/display/ColorFade;->mCollapseLoc:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 764
    iget v0, p0, Lcom/android/server/display/ColorFade;->mFeather:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 765
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacity:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 766
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTex1DLoc:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 769
    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, p1}, Ljava/lang/Float;-><init>(F)V

    .line 770
    .local v12, "sat_val":Ljava/lang/Float;
    new-instance v6, Ljava/lang/Float;

    const-string/jumbo v0, "0.0"

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 771
    .local v6, "des_sat_val":Ljava/lang/Float;
    invoke-virtual {v12, v6}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v11

    .line 773
    .local v11, "retval":I
    if-nez v11, :cond_3

    .line 774
    invoke-static {v2, v2, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 775
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 776
    return-void

    .line 779
    :cond_3
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 780
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 781
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 782
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTex1D:[I

    aget v0, v0, v3

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 785
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 786
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 787
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 789
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v13

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 790
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 791
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 793
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 796
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 797
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 798
    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 730
    return-void
.end method

.method private drawFaded(FFFF)V
    .locals 8
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F
    .param p3, "saturation"    # F
    .param p4, "scale"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 808
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 811
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 812
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 813
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 814
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 815
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 816
    iget v0, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 819
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 820
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v4, 0x8d65

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 823
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 824
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 825
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 827
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 828
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 829
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 831
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 834
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 835
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 802
    return-void
.end method

.method private initGLBuffers()Z
    .locals 11

    .prologue
    const/16 v10, 0x2600

    const v9, 0x8892

    const v7, 0x8d65

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 462
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 466
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 469
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v2, v2, v1

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 470
    const/16 v2, 0x2800

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 472
    const/16 v2, 0x2801

    invoke-static {v7, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 474
    const/16 v2, 0x2802

    .line 475
    const v3, 0x812f

    .line 474
    invoke-static {v7, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 476
    const/16 v2, 0x2803

    .line 477
    const v3, 0x812f

    .line 476
    invoke-static {v7, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 478
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 481
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x2

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 484
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 485
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 486
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    .line 485
    invoke-static {v9, v2, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 489
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 490
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 491
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    .line 490
    invoke-static {v9, v2, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 493
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 496
    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTex1D:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 499
    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 501
    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 503
    const/16 v2, 0x2802

    .line 504
    const v3, 0x812f

    .line 503
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 505
    const/16 v2, 0x2803

    .line 506
    const v3, 0x812f

    .line 505
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 507
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->sine80Tex:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 508
    .local v8, "byteBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v2, "glteximage2d"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 509
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->sine80Tex:[B

    array-length v3, v2

    const/16 v2, 0x1909

    const/4 v4, 0x1

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 510
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 511
    const-string/jumbo v0, "glteximage2dBindTexture"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 515
    .end local v8    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "ColorFade : initGLBuffers"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const v5, 0x8b31

    const v3, 0x8b30

    const/4 v4, 0x0

    .line 380
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 385
    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v2, v6, :cond_1

    .line 386
    const v2, 0x1100014

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 388
    .local v1, "vshader":I
    const v2, 0x1100013

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 405
    .local v0, "fshader":I
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 406
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    return v4

    .line 391
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_1
    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v2, v7, :cond_2

    .line 393
    const v2, 0x1100016

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 395
    .restart local v1    # "vshader":I
    const v2, 0x1100015

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .restart local v0    # "fshader":I
    goto :goto_0

    .line 399
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_2
    const v2, 0x1100004

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 401
    .restart local v1    # "vshader":I
    const v2, 0x1100003

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .restart local v0    # "fshader":I
    goto :goto_0

    .line 408
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 410
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 411
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 412
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 413
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 415
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 417
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 418
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "uv"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 420
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "proj_matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 421
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "tex_matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 423
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "opacity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 424
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "gamma"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 425
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "saturation"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    .line 426
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "scale"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    .line 427
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "texUnit"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 430
    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v2, v6, :cond_5

    .line 431
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "dev_dim"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mDeviceDimLoc:I

    .line 432
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "collapse"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mCollapseLoc:I

    .line 433
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "alphaStep"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mAlphaLoc:I

    .line 445
    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 446
    iget v2, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 447
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 450
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v3, "ColorFade : initGLShaders"

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 452
    const/4 v2, 0x1

    return v2

    .line 435
    :cond_5
    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v2, v7, :cond_4

    .line 436
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "dev_dim"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mDeviceDimLoc:I

    .line 437
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "collapse"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mCollapseLoc:I

    .line 438
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "opacity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mOpacity:I

    .line 439
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "feather"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mFeather:I

    .line 440
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v3, "gradient"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mTex1DLoc:I

    goto :goto_1
.end method

.method private loadShader(Landroid/content/Context;II)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 351
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "source":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v4, "ColorFade : readFile"

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 360
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 362
    .local v1, "shader":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 363
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 365
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 366
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v5}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 367
    aget v3, v0, v5

    if-nez v3, :cond_0

    .line 368
    const-string/jumbo v3, "ColorFade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string/jumbo v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string/jumbo v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 372
    const/4 v1, 0x0

    .line 375
    :cond_0
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 1195
    const-string/jumbo v0, "ColorFade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    return-void
.end method

.method private ortho(FFFFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 839
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    div-float v1, v4, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 840
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 841
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 842
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 843
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 844
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p4, p3

    div-float v1, v4, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 845
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 846
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 847
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 848
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 849
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float v1, v2, v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 850
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 851
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 852
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 853
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 854
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 838
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 341
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 343
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 531
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 532
    add-float v0, p2, p4

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 533
    add-float v0, p1, p3

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 534
    add-float v0, p2, p4

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 535
    add-float v0, p1, p3

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 536
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 525
    return-void
.end method

.method private setupGradientTexture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 859
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    return v3

    .line 863
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTex1DGenerated:Z

    if-nez v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTex1D:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 865
    const-string/jumbo v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 866
    return v3

    .line 868
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTex1DGenerated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 873
    return v4

    .line 870
    :catchall_0
    move-exception v0

    .line 871
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 870
    throw v0
.end method

.method private showSurface(F)Z
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 1147
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1156
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 1157
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 1159
    :cond_1
    return v2

    .line 1153
    :catchall_0
    move-exception v0

    .line 1154
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1153
    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 585
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 587
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "ColorFade : dismiss"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 577
    return-void
.end method

.method public dismissResources()V
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGradientTexture()V

    .line 556
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 557
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 558
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 559
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 565
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 545
    :cond_0
    return-void

    .line 560
    :catchall_0
    move-exception v0

    .line 561
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 560
    throw v0
.end method

.method public draw(F)Z
    .locals 22
    .param p1, "level"    # F

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-nez v15, :cond_0

    .line 608
    const/4 v15, 0x0

    return v15

    .line 611
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/ColorFade;->mMode:I

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 612
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v15

    return v15

    .line 615
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 616
    const/4 v15, 0x0

    return v15

    .line 620
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/ColorFade;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v8

    .line 621
    .local v8, "mDisplay":[Landroid/view/Display;
    array-length v15, v8

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v15, v0, :cond_6

    .line 623
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/ColorFade;->mMode:I

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/ColorFade;->mMode:I

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    :cond_3
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v15, v18, v20

    if-gtz v15, :cond_6

    .line 625
    const/4 v7, 0x0

    .line 622
    .local v7, "i":I
    :goto_0
    const/4 v15, 0x6

    .line 625
    if-ge v7, v15, :cond_4

    .line 626
    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 627
    const/16 v15, 0x4000

    invoke-static {v15}, Landroid/opengl/GLES20;->glClear(I)V

    .line 628
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 629
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 630
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    .line 625
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 632
    :cond_4
    const-string/jumbo v15, "drawFrame"

    invoke-static {v15}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_5

    .line 633
    const/4 v15, 0x0

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 633
    return v15

    .line 636
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 638
    const/4 v15, 0x1

    return v15

    .line 635
    :catchall_0
    move-exception v15

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 635
    throw v15

    .line 645
    .end local v7    # "i":I
    :cond_6
    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    :try_start_1
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 646
    const/16 v15, 0x4000

    invoke-static {v15}, Landroid/opengl/GLES20;->glClear(I)V

    .line 649
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v15, p1

    float-to-double v10, v15

    .line 650
    .local v10, "one_minus_level":D
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 651
    .local v4, "cos":D
    const-wide/16 v18, 0x0

    cmpg-double v15, v4, v18

    if-gez v15, :cond_7

    const/4 v15, -0x1

    :goto_1
    int-to-double v0, v15

    move-wide/from16 v16, v0

    .line 652
    .local v16, "sign":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v15, v0

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v9, v15, v18

    .line 653
    .local v9, "opacity":F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 654
    .local v12, "saturation":F
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v18, v18, v20

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 655
    .local v14, "scale":F
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v16

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v20

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    mul-double v18, v18, v20

    const-wide v20, 0x3fb999999999999aL    # 0.1

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 657
    .local v6, "gamma":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/ColorFade;->mMode:I

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    .line 658
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 659
    .local v13, "saturationCollapse":F
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/display/ColorFade;->drawEdgeCollapse(F)V

    .line 669
    .end local v13    # "saturationCollapse":F
    :goto_2
    const-string/jumbo v15, "drawFrame"

    invoke-static {v15}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v15

    if-eqz v15, :cond_a

    .line 670
    const/4 v15, 0x0

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 670
    return v15

    .line 651
    .end local v6    # "gamma":F
    .end local v9    # "opacity":F
    .end local v12    # "saturation":F
    .end local v14    # "scale":F
    .end local v16    # "sign":D
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 661
    .restart local v6    # "gamma":F
    .restart local v9    # "opacity":F
    .restart local v12    # "saturation":F
    .restart local v14    # "scale":F
    .restart local v16    # "sign":D
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/ColorFade;->mMode:I

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_9

    .line 662
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/ColorFade;->drawEdgeUnite(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 674
    .end local v4    # "cos":D
    .end local v6    # "gamma":F
    .end local v9    # "opacity":F
    .end local v10    # "one_minus_level":D
    .end local v12    # "saturation":F
    .end local v14    # "scale":F
    .end local v16    # "sign":D
    :catchall_1
    move-exception v15

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 674
    throw v15

    .line 665
    .restart local v4    # "cos":D
    .restart local v6    # "gamma":F
    .restart local v9    # "opacity":F
    .restart local v10    # "one_minus_level":D
    .restart local v12    # "saturation":F
    .restart local v14    # "scale":F
    .restart local v16    # "sign":D
    :cond_9
    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v6

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15, v12, v14}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    goto :goto_2

    .line 673
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 677
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v15

    return v15
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1215
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1216
    const-string/jumbo v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public interpol_SineIn33Interpolation_getStep(F)F
    .locals 12
    .param p1, "input"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 194
    div-float v0, p1, v10

    .line 195
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segmentsSIn33:[[F

    array-length v1, v6

    .line 196
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 197
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/server/display/ColorFade;->segmentsSIn33:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/server/display/ColorFade;->segmentsSIn33:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 199
    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v10, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 200
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segmentsSIn33:[[F

    aget-object v3, v6, v4

    .line 201
    .local v3, "_loc_8":[F
    aget v6, v3, v11

    sub-float v7, v10, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    const/4 v7, 0x0

    add-float v5, v7, v6

    .line 202
    .local v5, "ret":F
    return v5
.end method

.method public interpol_SineInOut70Interpolation_getStep(F)F
    .locals 12
    .param p1, "input"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 183
    div-float v0, p1, v10

    .line 184
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segments70:[[F

    array-length v1, v6

    .line 185
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 186
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/server/display/ColorFade;->segments70:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/server/display/ColorFade;->segments70:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 187
    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v10, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 188
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segments70:[[F

    aget-object v3, v6, v4

    .line 189
    .local v3, "_loc_8":[F
    aget v6, v3, v11

    sub-float v7, v10, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    const/4 v7, 0x0

    add-float v5, v7, v6

    .line 190
    .local v5, "ret":F
    return v5
.end method

.method public interpol_SineInOut80Interpolation_getStep(F)F
    .locals 12
    .param p1, "input"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 238
    div-float v0, p1, v10

    .line 239
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segments80:[[F

    array-length v1, v6

    .line 240
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 241
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/server/display/ColorFade;->segments80:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/android/server/display/ColorFade;->segments80:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 242
    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v10, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 243
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/server/display/ColorFade;->segments80:[[F

    aget-object v3, v6, v4

    .line 244
    .local v3, "_loc_8":[F
    aget v6, v3, v11

    sub-float v7, v10, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    const/4 v7, 0x0

    add-float v5, v7, v6

    .line 245
    .local v5, "ret":F
    return v5
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const-wide/16 v8, 0xa

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 257
    const-string/jumbo v2, "ColorFade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare: mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 261
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 264
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 266
    iget-boolean v2, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v2, :cond_0

    .line 267
    const-string/jumbo v2, "ColorFade"

    const-string/jumbo v3, "ColorFade is already prepared"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v6

    .line 272
    :cond_0
    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 277
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 278
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 279
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 280
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 283
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v4, "ColorFade : getDisplayInfo"

    invoke-virtual {v2, v4, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 287
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    .line 287
    :goto_0
    if-nez v2, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 290
    const-string/jumbo v2, "ColorFade"

    const-string/jumbo v4, "prepare:createSurface fail !!!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v3

    :cond_1
    move v2, v3

    .line 287
    goto :goto_0

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    const-string/jumbo v2, "ColorFade"

    const-string/jumbo v4, "prepare:attachEglContext fail !!!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v3

    .line 300
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "prepare"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 303
    const-string/jumbo v2, "ColorFade"

    const-string/jumbo v4, "prepare:initGLShaders fail !!!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 304
    return v3

    .line 307
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 311
    iput-boolean v6, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 312
    iput-boolean v6, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 321
    if-ne p2, v6, :cond_6

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    .line 323
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 325
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v3, "ColorFade : draw"

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    .line 307
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 306
    throw v2

    .line 331
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTimeMeasurementForPrepare:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v3, "ColorFade prepare"

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 332
    const-string/jumbo v2, "ColorFade"

    const-string/jumbo v3, "ColorFade is ready"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v6
.end method
