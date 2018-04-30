.class public abstract Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;
.super Landroid/preference/PreferenceFragment;
.source "PermissionsFrameFragment.java"


# instance fields
.field private mIsLoading:Z

.field private mLoadingView:Landroid/view/View;

.field private mPreferencesContainer:Landroid/view/ViewGroup;

.field private mPrefsView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setLoading(ZZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setViewShown(Landroid/view/View;ZZ)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_0

    const/high16 v1, 0x10a0000

    :goto_0
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void

    :cond_0
    const v1, 0x10a0001

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

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
.method public getListView()Landroid/widget/ListView;
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f110130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-object v1
.end method

.method protected final getPreferencesContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f03006c

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f11012f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    :cond_0
    const v1, 0x7f110117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    invoke-super {p0, p1, v1, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mIsLoading:Z

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->setLoading(ZZZ)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected setLoading(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionsFrameFragment;->setLoading(ZZZ)V

    return-void
.end method
