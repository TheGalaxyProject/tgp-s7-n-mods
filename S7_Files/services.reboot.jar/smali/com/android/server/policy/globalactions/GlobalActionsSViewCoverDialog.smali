.class public Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsSViewCoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;
    }
.end annotation


# static fields
.field private static mBackgroundView:Landroid/widget/ImageView;

.field private static mCoverColor:I

.field private static final mScafe:Ljava/lang/String;

.field private static messageView:Landroid/widget/TextView;

.field private static messageViewContainer:Landroid/widget/ScrollView;


# instance fields
.field private messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static synthetic -get0()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    sput-object p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic -set1(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    sput-object p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic -set2(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .locals 0

    sput-object p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->mCoverColor:I

    .line 56
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->mScafe:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 244
    sget-object v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    sget-object v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    sget-object v1, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 251
    :goto_0
    sget-object v0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
