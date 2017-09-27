.class public Lcom/android/settings/applications/SecLayoutPreference;
.super Landroid/preference/Preference;
.source "SecLayoutPreference.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/SecLayoutPreference;->setSelectable(Z)V

    .line 38
    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    .line 37
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 41
    .local v2, "layoutResource":I
    if-nez v2, :cond_0

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "SecLayoutPreference requires a layout to be defined"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/SecLayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 48
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f11014a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, "allDetails":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 50
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 52
    :cond_1
    iput-object v3, p0, Lcom/android/settings/applications/SecLayoutPreference;->mRootView:Landroid/view/View;

    .line 53
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/SecLayoutPreference;->setShouldDisableView(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/SecLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/SecLayoutPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method
