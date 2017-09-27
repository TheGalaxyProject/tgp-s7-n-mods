.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/vpn2/SecGearPreference;
.source "ManageablePreference.java"


# static fields
.field public static STATE_NONE:I


# instance fields
.field mIsAlwaysOn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/SecGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 38
    sget v0, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    iput v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setOrder(I)V

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setUserId(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    return v0
.end method

.method public setAlwaysOn(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 73
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 67
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->notifyHierarchyChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    .line 54
    const-string/jumbo v0, "no_config_vpn"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method protected updateSummary()V
    .locals 6

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c0099

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "states":[Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    sget v5, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    if-ne v4, v5, :cond_1

    const-string/jumbo v3, ""

    .line 90
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v4, :cond_0

    .line 91
    const v4, 0x7f0b181d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "alwaysOnString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 95
    .end local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/ManageablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    return-void

    .line 89
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    aget-object v3, v2, v4

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 92
    .restart local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const v5, 0x7f0b1549

    .line 92
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
