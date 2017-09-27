.class Landroid/support/v17/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    .line 53
    return-void
.end method

.method private shouldPersistFocusFromDirection(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 87
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    if-eq p1, v2, :cond_0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez v2, :cond_2

    const/16 v2, 0x11

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 92
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->shouldPersistFocusFromDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getGrandChildCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .local v0, "wrapper":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 170
    instance-of v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v1, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 172
    return-void

    :cond_0
    move-object v0, p1

    .line 174
    check-cast v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    .line 175
    .local v0, "savedState":Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    check-cast p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iget v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 177
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 169
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 164
    .local v0, "savedState":Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput v1, v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    .line 165
    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 106
    move-object v0, p2

    .line 107
    .local v0, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 110
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    .end local p1    # "child":Landroid/view/View;
    :goto_1
    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 104
    return-void

    .line 110
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    .local v0, "wrapper":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method
