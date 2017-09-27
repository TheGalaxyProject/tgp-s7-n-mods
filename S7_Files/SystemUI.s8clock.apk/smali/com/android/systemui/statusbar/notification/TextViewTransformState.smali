.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

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

.method private getEllipsisCount()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 58
    .local v0, "l":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 60
    .local v1, "lines":I
    if-lez v1, :cond_0

    .line 62
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    return v2

    .line 65
    .end local v1    # "lines":I
    :cond_0
    return v3
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .locals 2

    .prologue
    .line 69
    sget-object v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 70
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 73
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 37
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 35
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 79
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    const/4 v3, 0x0

    .line 44
    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 45
    check-cast v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 46
    .local v1, "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v2

    .line 48
    .local v2, "ownEllipsized":I
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    .line 49
    .local v0, "otherEllipsized":I
    if-ne v2, v0, :cond_0

    .line 50
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 49
    :cond_0
    return v3

    .line 53
    .end local v0    # "otherEllipsized":I
    .end local v1    # "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .end local v2    # "ownEllipsized":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v3

    return v3
.end method
