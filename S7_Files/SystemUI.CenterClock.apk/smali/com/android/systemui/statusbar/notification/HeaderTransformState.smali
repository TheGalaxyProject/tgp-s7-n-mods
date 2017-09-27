.class public Lcom/android/systemui/statusbar/notification/HeaderTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "HeaderTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/HeaderTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpandButton:Landroid/view/View;

.field private mWorkProfileIcon:Landroid/view/View;

.field private mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    .locals 2

    .prologue
    .line 102
    sget-object v1, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;

    .line 103
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 106
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/HeaderTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/HeaderTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public initFrom(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 39
    instance-of v1, p1, Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Landroid/view/NotificationHeaderView;

    .line 41
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    .line 42
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    .line 43
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getWorkProfileIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileIcon:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 37
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    return-void
.end method

.method public prepareFadeIn()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 152
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 156
    .local v1, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v0

    .line 157
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 158
    invoke-virtual {v1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "headerChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 157
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 165
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileIcon:Landroid/view/View;

    if-ne v2, v4, :cond_1

    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 150
    .end local v2    # "headerChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 115
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 121
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    .line 122
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    .line 119
    return-void
.end method

.method public setVisible(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(Z)V

    .line 127
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 131
    .local v1, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v0

    .line 132
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "headerChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2

    .line 132
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 138
    if-eqz p1, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    if-ne v2, v4, :cond_3

    .line 140
    if-eqz p1, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 142
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileIcon:Landroid/view/View;

    if-ne v2, v4, :cond_1

    .line 143
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 144
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 138
    :cond_4
    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    move v4, v5

    .line 140
    goto :goto_3

    .line 125
    .end local v2    # "headerChild":Landroid/view/View;
    :cond_6
    return-void
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 7
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 79
    .local v1, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {v1, v6}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    .line 81
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v0

    .line 82
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 83
    invoke-virtual {v1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "headerChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 82
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    if-ne v2, v4, :cond_3

    .line 88
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileIcon:Landroid/view/View;

    if-ne v2, v4, :cond_1

    .line 92
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    move-object v4, p1

    .line 93
    check-cast v4, Lcom/android/systemui/statusbar/notification/HeaderTransformState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mWorkProfileState:Lcom/android/systemui/statusbar/notification/TransformState;

    .line 92
    invoke-virtual {v5, v4, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    goto :goto_1

    .line 98
    .end local v2    # "headerChild":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 52
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 53
    const/4 v4, 0x0

    return v4

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mTransformedView:Landroid/view/View;

    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 56
    .local v1, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v0

    .line 57
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 58
    invoke-virtual {v1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "headerChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    if-eq v2, v4, :cond_2

    .line 63
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->mExpandButton:Landroid/view/View;

    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    goto :goto_1

    .line 68
    .end local v2    # "headerChild":Landroid/view/View;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method
