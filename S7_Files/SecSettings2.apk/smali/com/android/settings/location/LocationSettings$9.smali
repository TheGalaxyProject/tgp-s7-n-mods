.class Lcom/android/settings/location/LocationSettings$9;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 436
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 437
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 438
    .local v0, "switchState":Z
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get7(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "no_share_location"

    .line 439
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v5}, Lcom/android/settings/location/LocationSettings;->-get4(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v5

    .line 438
    invoke-virtual {v3, v4, v1, v5}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$9;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 441
    const v1, 0x7f0b19db

    .line 440
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    .line 443
    .end local v0    # "switchState":Z
    :cond_0
    return v2

    .restart local v0    # "switchState":Z
    :cond_1
    move v1, v2

    .line 439
    goto :goto_0

    .line 441
    :cond_2
    const v1, 0x7f0b19dc

    goto :goto_1
.end method
