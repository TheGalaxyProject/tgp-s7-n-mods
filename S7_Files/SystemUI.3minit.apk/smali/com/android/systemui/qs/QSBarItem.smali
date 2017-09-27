.class public abstract Lcom/android/systemui/qs/QSBarItem;
.super Landroid/widget/LinearLayout;
.source "QSBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSBarItem$Callback;
    }
.end annotation


# static fields
.field protected static ON_BOTH:I

.field protected static ON_HEADER:I

.field protected static ON_PANEL:I


# instance fields
.field protected mBarType:I

.field protected mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

.field protected mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/qs/QSBarItem;->ON_HEADER:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barType"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput p2, p0, Lcom/android/systemui/qs/QSBarItem;->mBarType:I

    .line 35
    return-void
.end method


# virtual methods
.method public collapseIfNeeded()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public abstract getAnimator()Lcom/android/systemui/qs/TouchAnimator;
.end method

.method public abstract getBarHeight()I
.end method

.method public getBarType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/qs/QSBarItem;->mBarType:I

    return v0
.end method

.method public abstract getBarVisibility()Z
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 0
    .param p1, "mExpandedHeight"    # F

    .prologue
    .line 67
    return-void
.end method

.method public setBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 73
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSBarItem$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSBarItem$Callback;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarItem;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    .line 48
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 0
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarItem;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 56
    return-void
.end method

.method public setPosition(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 52
    return-void
.end method
