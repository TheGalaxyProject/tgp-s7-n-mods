.class Lcom/android/settings/datausage/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageSummary;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v4, "usage"

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 184
    .local v2, "usage_category":Landroid/preference/PreferenceCategory;
    if-nez v2, :cond_0

    .line 185
    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "\'usage\' preference category not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_2

    .line 191
    :cond_1
    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "Invalid context or content-resolver"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 196
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 197
    const-string/jumbo v4, "background_data_by_pco"

    .line 195
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_4

    const/4 v1, 0x1

    .line 199
    .local v1, "restrictBackgroundbyPco":Z
    :goto_0
    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPcoSettingObserver restrictBackgroundbyPco: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v1, :cond_5

    .line 201
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3, v6}, Lcom/android/settings/datausage/DataUsageSummary;->-set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    .line 180
    :cond_3
    :goto_1
    return-void

    .line 195
    .end local v1    # "restrictBackgroundbyPco":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "restrictBackgroundbyPco":Z
    goto :goto_0

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 211
    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->-set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    .line 212
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap0(Lcom/android/settings/datausage/DataUsageSummary;)V

    goto :goto_1

    .line 207
    :cond_7
    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "Returning due to no mobile data or not admin"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
