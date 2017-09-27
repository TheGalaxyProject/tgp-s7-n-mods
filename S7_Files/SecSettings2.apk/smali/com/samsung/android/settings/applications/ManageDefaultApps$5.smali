.class Lcom/samsung/android/settings/applications/ManageDefaultApps$5;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 172
    if-nez p2, :cond_0

    .line 173
    return v6

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 175
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    move-object v1, p2

    .line 177
    check-cast v1, Ljava/lang/CharSequence;

    .line 178
    .local v1, "packageName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    return v6

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get4(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 182
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v5}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get6(Lcom/samsung/android/settings/applications/ManageDefaultApps;)I

    move-result v5

    .line 181
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v2

    .line 183
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    .local v0, "appName":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v3}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    .end local v0    # "appName":Ljava/lang/CharSequence;
    :cond_2
    return v2
.end method
