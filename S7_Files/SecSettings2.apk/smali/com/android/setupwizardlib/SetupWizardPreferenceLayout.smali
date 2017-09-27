.class public Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
.super Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.source "SetupWizardPreferenceLayout.java"


# instance fields
.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_preference_template:I

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onTemplateInflated()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_preference_recycler_view:I

    .line 117
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 118
    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 112
    return-void
.end method
