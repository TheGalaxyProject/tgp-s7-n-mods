.class public Lcom/android/settings/dashboard/conditional/CellularDataCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    return-object v0
.end method

.method public refreshState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 33
    const-class v4, Landroid/net/ConnectivityManager;

    .line 32
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 35
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 38
    return-void

    .line 40
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 31
    return-void

    .line 40
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
