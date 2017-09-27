.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/SViewCoverLauncher$1;,
        Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    }
.end annotation


# static fields
.field private static sCoverBaseClass:Ljava/lang/Class;

.field private static sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

.field private static sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

.field private static sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

.field private static sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

.field private static sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

.field private static sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

.field private static sUserActivityMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

.field private mSViewCoverBase:Ljava/lang/Object;

.field private mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    .line 44
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    .line 45
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    .line 46
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    .line 47
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    .line 49
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    .line 50
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    .line 51
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    .line 52
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    .line 345
    new-instance v4, Lcom/android/systemui/cover/SViewCoverLauncher$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/cover/SViewCoverLauncher$1;-><init>(Lcom/android/systemui/cover/SViewCoverLauncher;)V

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    .line 62
    const/4 v4, 0x3

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 63
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 66
    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/cover/SViewCoverLauncher;->setPreviewContainerSize(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v3    # "parameters":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ctorEx":Ljava/lang/InstantiationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher Unable to instantiate constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "ctorEx":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher InvocationTargetException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v2    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 69
    .local v1, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SViewCoverLauncher IllegalAccessException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSViewCoverHeight(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 314
    const-string/jumbo v0, "SViewCoverLauncher"

    const-string/jumbo v1, "getSViewCoverHeight, context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getSViewCoverMargin(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    if-nez p0, :cond_0

    .line 322
    const-string/jumbo v0, "SViewCoverLauncher"

    const-string/jumbo v1, "getSViewCoverMargin, context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getSViewCoverShortcutContainerHeight(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 335
    const-string/jumbo v2, "SViewCoverLauncher"

    const-string/jumbo v3, "getSViewCoverShortcutContainerHeight, context null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/high16 v2, -0x40800000    # -1.0f

    return v2

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 339
    .local v1, "shortcutHeight":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 341
    .local v0, "bottomMargin":F
    add-float v2, v1, v0

    return v2
.end method

.method public static getSViewCoverWidth(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const-string/jumbo v0, "SViewCoverLauncher"

    const-string/jumbo v1, "getSViewCoverWidht, context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private isAnyEmptyReflection()Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method private loadReflections()V
    .locals 6

    .prologue
    .line 106
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Load reflections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    const-string/jumbo v3, "com.sec.android.cover.CoverViewMediator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    .line 110
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 111
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "There\'s no cover base class"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    .line 116
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 118
    .local v2, "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    .line 120
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 121
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const-class v3, Lcom/samsung/android/cover/CoverState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 123
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "updateCoverState"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    .line 125
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 126
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 128
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "onCoverAppCovered"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    .line 130
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 131
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 133
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "onStatusBarStateChanged"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    .line 135
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 136
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 138
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "showCoverOpenPopup"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    .line 140
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 141
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 143
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "setCoverUiAlpha"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    .line 145
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "userActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    .line 146
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "showCoverOpenPopup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    .line 148
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 149
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const-class v3, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 151
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string/jumbo v4, "setShortcutAppOpenCallback"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "nsmEx":Ljava/lang/NoSuchMethodException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v1    # "nsmEx":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "cnfEx":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewContainerSize(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    const-string/jumbo v2, "SViewCoverLauncher"

    const-string/jumbo v3, "previewRootView null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    const v3, 0x7f0d0044

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 86
    .local v1, "margin":I
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 87
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    const v3, 0x7f0d0038

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 90
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 6
    .param p1, "covered"    # Z

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 267
    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke onCoverAppCovered."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 272
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 276
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking onCoverAppCovered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v1    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking onCoverAppCovered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatusBarStateChanged(I)V
    .locals 6
    .param p1, "statusBarState"    # I

    .prologue
    .line 179
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 180
    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke onStatusBarStateChanged."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 185
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 189
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v1    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShortcutAppOpenCallback(Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;)V
    .locals 6
    .param p1, "starter"    # Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    .line 286
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 287
    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke sSetShortcutAppOpenCallback."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 292
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 293
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 296
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking sSetShortcutAppOpenCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v1    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking sSetShortcutAppOpenCallback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup()V
    .locals 5

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    const-string/jumbo v2, "SViewCoverLauncher"

    const-string/jumbo v3, "Cannot invoke showCoverOpenPopup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 219
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SViewCoverLauncher InvocationTargetException encountered invoking showCoverOpenPopup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v1    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SViewCoverLauncher IllegalAccessException encountered invoking showCoverOpenPopup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 161
    :cond_0
    const-string/jumbo v3, "SViewCoverLauncher"

    const-string/jumbo v4, "Cannot invoke updateCoverState."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 166
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 167
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 170
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher InvocationTargetException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v1    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SViewCoverLauncher IllegalAccessException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
