.class Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroid/support/v7/widget/RecyclerView;

.field private final mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 703
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 704
    iput-object p2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 705
    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 706
    iput-object p4, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 702
    return-void
.end method

.method private scrollToPreference()V
    .locals 3

    .prologue
    .line 710
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 712
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 714
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 713
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v0

    .line 719
    .local v0, "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 720
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 709
    :cond_0
    return-void

    .line 716
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 717
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 716
    invoke-interface {v1, v2}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 725
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 731
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 730
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 736
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 735
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 741
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 740
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 750
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 746
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 745
    return-void
.end method
