.class public Lcom/android/settings/dashboard/conditional/FocusRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "FocusRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onWindowFocusChanged(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;->onWindowFocusChanged(Z)V

    .line 35
    :cond_0
    return-void
.end method
