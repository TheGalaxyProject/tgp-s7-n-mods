.class Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 50
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 51
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 53
    .local v1, "position":I
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v4, v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    if-nez v4, :cond_0

    .line 55
    return-void

    :cond_0
    move-object v3, v0

    .line 58
    check-cast v3, Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 59
    .local v3, "preferenceGroupAdapter":Landroid/support/v7/preference/PreferenceGroupAdapter;
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 60
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    if-nez v2, :cond_1

    .line 61
    return-void

    .line 64
    :cond_1
    invoke-virtual {v2, p2}, Landroid/support/v7/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 49
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
