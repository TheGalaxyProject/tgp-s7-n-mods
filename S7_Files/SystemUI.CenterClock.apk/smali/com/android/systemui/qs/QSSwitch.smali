.class public Lcom/android/systemui/qs/QSSwitch;
.super Landroid/widget/Switch;
.source "QSSwitch.java"


# instance fields
.field private mIsCheckedWhenTouchDown:Z

.field private mIsClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    .line 50
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 55
    .local v1, "handle":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, "action":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->isChecked()Z

    move-result v2

    .line 58
    .local v2, "isChecked":Z
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    if-eq v3, v2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->callOnClick()Z

    .line 63
    .end local v2    # "isChecked":Z
    :cond_2
    return v1
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    .line 43
    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    move-result v0

    return v0
.end method
