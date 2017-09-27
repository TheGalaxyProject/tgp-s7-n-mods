.class Lcom/android/settings/datausage/DataUsageSummary$2;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageSummary;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 7
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v6, 0x1

    .line 961
    const/4 v3, 0x0

    .line 962
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 963
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 964
    :cond_0
    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, "onPreciseCallStateChanged()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 967
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 968
    .local v0, "count":I
    if-le v0, v6, :cond_1

    .line 970
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 972
    .local v1, "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    if-eqz v1, :cond_1

    .line 973
    if-eqz v3, :cond_2

    const-string/jumbo v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 974
    invoke-virtual {v1, v6}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    .line 975
    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, "in volte calling:: menu of mobile data is disabled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .end local v1    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :cond_1
    :goto_0
    return-void

    .line 977
    .restart local v1    # "primary_category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    .line 978
    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, "volte call stop :: menu of mobile data is enabled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
