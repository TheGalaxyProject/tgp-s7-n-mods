.class public Lcom/android/settings/datausage/AlertAtWarningPreference;
.super Landroid/preference/DialogPreference;
.source "AlertAtWarningPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mChecked:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSPR:Z

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field mTarget:Lcom/android/settings/datausage/DataUsageSummary;

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mIsSPR:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mIsSPR:Z

    .line 51
    :cond_0
    return-void
.end method

.method private setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 86
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->notifyChanged()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/datausage/AlertAtWarningPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/AlertAtWarningPreference$1;-><init>(Lcom/android/settings/datausage/AlertAtWarningPreference;)V

    .line 93
    const-wide/16 v2, 0x12c

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method

.method private showDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 111
    const v0, 0x7f0b04a1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const v1, 0x104000a

    .line 111
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x7f0b04a2

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 110
    return-void
.end method

.method private updateChecked()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v2, v1, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 99
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "switchView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 102
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "switchView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 119
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x2

    .line 124
    .local v0, "defaultWarningGB":I
    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v6, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 127
    .local v2, "limitBytes":J
    iget-boolean v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mIsSPR:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x32

    .line 128
    :cond_1
    int-to-long v6, v0

    const-wide/32 v8, 0x40000000

    mul-long v4, v6, v8

    .line 129
    .local v4, "warningBytes":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_3

    .line 130
    const-wide/16 v4, 0x0

    .line 135
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v6, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 136
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    .line 118
    return-void

    .line 131
    :cond_3
    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 132
    const-wide/32 v6, 0x100000

    sub-long v4, v2, v6

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AlertAtWarningPreference;->showDialog(Landroid/app/AlertDialog$Builder;)V

    .line 106
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 74
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings/datausage/DataUsageSummary;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTarget:Lcom/android/settings/datausage/DataUsageSummary;

    .line 65
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 60
    iput-object p3, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 61
    iget-object v0, p3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->updateChecked()V

    .line 58
    return-void
.end method
