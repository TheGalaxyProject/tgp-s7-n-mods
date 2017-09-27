.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# instance fields
.field public blockTouchAction:Z

.field public fakeShadows:Z

.field public forceOpacity:Z

.field public hasSamsungMembers:Z

.field public isInMultiWindowMode:Z

.field public isLargeScreen:Z

.field public isSplitScreenLayout:Z

.field public isXLargeScreen:Z

.field private mContext:Landroid/content/Context;

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public scrollInterpolator:Landroid/view/animation/Interpolator;

.field public smallestWidth:I

.field public svelteLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 80
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 81
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f120008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 84
    const v3, 0x7f0c0042

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 87
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->reloadDisplayConfiguration()V

    .line 90
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    .line 91
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSamsungMembers:Z

    .line 95
    new-instance v3, Lcom/android/systemui/recents/misc/QuintOut80;

    invoke-direct {v3}, Lcom/android/systemui/recents/misc/QuintOut80;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    return-void
.end method


# virtual methods
.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method

.method public reloadDisplayConfiguration()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 102
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 103
    .local v0, "screenDensity":F
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    .line 104
    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v5, 0x44160000    # 600.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v2, v5, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    .line 105
    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v5, 0x44340000    # 720.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v2, v5, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    .line 100
    return-void

    :cond_0
    move v2, v4

    .line 104
    goto :goto_0

    :cond_1
    move v3, v4

    .line 105
    goto :goto_1
.end method
