.class final Landroid/support/v17/leanback/widget/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;,
        Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperStubImpl;,
        Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/ShadowHelper;


# instance fields
.field mImpl:Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;

.field mSupportsDynamicShadow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowHelper;->sInstance:Landroid/support/v17/leanback/widget/ShadowHelper;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowHelper;->mSupportsDynamicShadow:Z

    .line 89
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;-><init>(Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;

    .line 86
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperStubImpl;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperStubImpl;-><init>(Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperStubImpl;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowHelper;->sInstance:Landroid/support/v17/leanback/widget/ShadowHelper;

    return-object v0
.end method


# virtual methods
.method public setZ(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowHelper;->mImpl:Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;->setZ(Landroid/view/View;F)V

    .line 115
    return-void
.end method

.method public supportsDynamicShadow()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowHelper;->mSupportsDynamicShadow:Z

    return v0
.end method
