.class Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 893
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "AndroidVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "firmware_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 896
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    const-string/jumbo v1, "BasebandVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "baseband_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 899
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 900
    :cond_2
    const-string/jumbo v1, "KernelVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 901
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "kernel_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 902
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 903
    :cond_3
    const-string/jumbo v1, "BuildNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 904
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "build_number"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 905
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 906
    :cond_4
    const-string/jumbo v1, "SEForAndroidStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 907
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "selinux_status"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 908
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 909
    :cond_5
    const-string/jumbo v1, "SecuritySoftwareVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 910
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_sw_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 911
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 912
    :cond_6
    const-string/jumbo v1, "KnoxVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 913
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "knox_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 914
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 915
    :cond_7
    const-string/jumbo v1, "ServiceProviderSWVer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 916
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.app.omcagent"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 917
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "omc_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 918
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 921
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 923
    :cond_9
    const-string/jumbo v1, "AndroidSecurityPatchLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_patch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 925
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
