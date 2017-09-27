.class public Lcom/android/systemui/statusbar/phone/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarController$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkBarVisivility:I

.field private mDarkNavigation:Z

.field private mFullscreenVisivility:I

.field private mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNavigationBarMode:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 56
    return-void
.end method

.method private isDark(III)Z
    .locals 6
    .param p1, "vis"    # I
    .param p2, "fullscreenVis"    # I
    .param p3, "navigationBarMode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    if-nez p3, :cond_1

    const/4 v1, 0x1

    .line 100
    .local v1, "isOpaqueBar":Z
    :goto_0
    if-eq p3, v5, :cond_0

    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 101
    .local v2, "isSemiTransparentBar":Z
    :goto_1
    and-int/lit8 v3, p1, 0x10

    if-nez v3, :cond_3

    .line 102
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 103
    .local v0, "isDarkBar":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 104
    return v4

    .line 99
    .end local v0    # "isDarkBar":Z
    .end local v1    # "isOpaqueBar":Z
    .end local v2    # "isSemiTransparentBar":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isOpaqueBar":Z
    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isSemiTransparentBar":Z
    goto :goto_1

    .line 101
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isDarkBar":Z
    goto :goto_2

    .line 102
    .end local v0    # "isDarkBar":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isDarkBar":Z
    goto :goto_2

    .line 105
    :cond_5
    if-eqz v2, :cond_6

    .line 106
    return v5

    .line 108
    :cond_6
    return v0
.end method

.method private update()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    .line 111
    return-void
.end method


# virtual methods
.method public getBarMode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    return v0
.end method

.method public isDarkNavigation()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    return v0
.end method

.method public onSystemUiVisibilityChanged(IIIZI)V
    .locals 13
    .param p1, "vis"    # I
    .param p2, "fullscreenVis"    # I
    .param p3, "mask"    # I
    .param p4, "nbModeChanged"    # Z
    .param p5, "navigationBarMode"    # I

    .prologue
    .line 65
    const-string/jumbo v8, "NavigationBarController"

    const-string/jumbo v9, "vis = %s, fullscreenVis = %s, nbModeChanged = %b navigationBarMode = %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 65
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move/from16 v0, p5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    .line 69
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    .line 70
    .local v5, "oldDarkBar":Z
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    .line 71
    .local v6, "oldDarkVis":I
    move/from16 v0, p3

    not-int v8, v0

    and-int/2addr v8, v6

    and-int/lit8 v9, p1, 0x10

    and-int v9, v9, p3

    or-int v3, v8, v9

    .line 72
    .local v3, "newDarkVis":I
    xor-int v1, v3, v6

    .line 74
    .local v1, "diffDarkVis":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    .line 75
    .local v7, "oldFullscreen":I
    move v4, p2

    .line 76
    .local v4, "newFullscreen":I
    xor-int v2, p2, v7

    .line 78
    .local v2, "diffFullscreen":I
    if-nez p4, :cond_0

    .line 79
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_3

    .line 81
    :cond_0
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v3, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDark(III)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    .line 82
    if-nez p4, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    if-eq v5, v8, :cond_2

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->update()V

    .line 86
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    .line 87
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    .line 64
    return-void

    .line 80
    :cond_3
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_2

    goto :goto_0
.end method
