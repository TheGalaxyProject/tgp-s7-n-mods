.class public Landroid/support/v17/leanback/widget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    if-ne p1, p0, :cond_0

    .line 31
    const/4 v1, 0x1

    return v1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 34
    .local v0, "p":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 35
    return v2

    :cond_1
    move-object p1, v0

    .line 37
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 39
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_2
    return v2
.end method
