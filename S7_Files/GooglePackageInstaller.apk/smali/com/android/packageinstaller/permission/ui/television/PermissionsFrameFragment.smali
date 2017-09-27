.class public abstract Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "PermissionsFrameFragment.java"


# instance fields
.field private mGridView:Landroid/support/v7/widget/RecyclerView;

.field private mIsLoading:Z

.field private mLoadingView:Landroid/view/View;

.field private mPreferencesContainer:Landroid/view/ViewGroup;

.field private mPrefsView:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->isPreferenceListEmpty()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private isPreferenceListEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 193
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 195
    const-string/jumbo v3, "HeaderPreferenceKey"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 195
    goto :goto_0

    :cond_2
    move v1, v2

    .line 193
    goto :goto_0
.end method

.method private setLoading(ZZZ)V
    .locals 2
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_3

    .line 90
    :cond_0
    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mIsLoading:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    const/4 p2, 0x0

    .line 95
    .end local p2    # "animate":Z
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    .line 88
    :cond_3
    return-void

    .line 96
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setViewShown(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p3, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 107
    if-eqz p2, :cond_0

    const/high16 v1, 0x10a0000

    .line 106
    :goto_0
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 108
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_2
    return-void

    .line 107
    :cond_0
    const v1, 0x10a0001

    goto :goto_0

    .line 111
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 128
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 129
    if-eqz p2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    goto :goto_3
.end method


# virtual methods
.method protected final getPreferencesContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceScreen;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 148
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f110130

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->onSetEmptyText(Landroid/widget/TextView;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 152
    .local v3, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v4, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;-><init>(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 179
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->isPreferenceListEmpty()Z

    move-result v2

    .line 180
    .local v2, "isEmpty":Z
    if-eqz v2, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 183
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 188
    .end local v1    # "emptyView":Landroid/widget/TextView;
    .end local v2    # "isEmpty":Z
    .end local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    return-object v0

    .restart local v1    # "emptyView":Landroid/widget/TextView;
    .restart local v2    # "isEmpty":Z
    .restart local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    move v4, v6

    .line 180
    goto :goto_0

    :cond_2
    move v6, v5

    .line 182
    goto :goto_1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 78
    .local v0, "preferences":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 137
    const v1, 0x7f03005f

    .line 136
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 138
    .local v0, "verticalGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 139
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    .line 140
    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    .line 141
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mGridView:Landroid/support/v7/widget/RecyclerView;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 61
    const v1, 0x7f03006c

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    .local v0, "rootView":Landroid/view/ViewGroup;
    const v1, 0x7f11012f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 64
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 65
    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 67
    :cond_0
    const v1, 0x7f110117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 68
    invoke-super {p0, p1, v1, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    .line 70
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mIsLoading:Z

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setLoading(ZZZ)V

    .line 71
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    return-object v0
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 204
    return-void
.end method

.method protected setLoading(ZZ)V
    .locals 1
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setLoading(ZZZ)V

    .line 84
    return-void
.end method
