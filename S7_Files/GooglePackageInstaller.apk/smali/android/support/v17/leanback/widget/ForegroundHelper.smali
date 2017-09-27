.class final Landroid/support/v17/leanback/widget/ForegroundHelper;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;


# instance fields
.field mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ForegroundHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->supportsForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;-><init>(Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    .line 52
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;-><init>(Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    return-object v0
.end method

.method public static supportsForeground()Z
    .locals 2

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method
