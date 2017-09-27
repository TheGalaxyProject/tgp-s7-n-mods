.class Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;
.super Ljava/lang/Object;
.source "DividerButtonsWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 25
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 26
    const/16 v3, 0x8fe

    const/4 v4, 0x2

    .line 27
    const/4 v5, -0x3

    move v1, p2

    move v2, p3

    .line 25
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3da3d70a    # 0.08f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 29
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "DividerButtonsGroup"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 31
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    .line 24
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 42
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    .line 38
    return-void
.end method

.method public setTouchable(Z)V
    .locals 4
    .param p1, "touchable"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "changed":Z
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .end local v0    # "changed":Z
    :cond_1
    return-void

    .line 51
    .restart local v0    # "changed":Z
    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method
