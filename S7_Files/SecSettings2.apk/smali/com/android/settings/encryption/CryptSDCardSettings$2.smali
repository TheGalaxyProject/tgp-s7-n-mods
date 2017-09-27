.class Lcom/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/encryption/CryptSDCardSettings;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 780
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 781
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "BixbyManger is null, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "stateId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 787
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Failed to get stateId, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 791
    :cond_1
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby Request stateId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string/jumbo v2, "StartEncryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 795
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "sdcardState":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 797
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot encrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "NO"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    .line 800
    return-void

    .line 804
    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 805
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already encrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 807
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "YES"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 810
    return-void

    .line 814
    :cond_4
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 815
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_5
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 851
    .end local v0    # "sdcardState":Ljava/lang/String;
    :goto_0
    return-void

    .line 819
    :cond_6
    const-string/jumbo v2, "StartDecryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 822
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 823
    .restart local v0    # "sdcardState":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 824
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot decrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "NO"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    .line 827
    return-void

    .line 831
    :cond_7
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-nez v2, :cond_9

    .line 832
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already decrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 834
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "YES"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_8
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    .line 837
    return-void

    .line 841
    :cond_9
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 842
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_a
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    goto/16 :goto_0

    .line 847
    .end local v0    # "sdcardState":Ljava/lang/String;
    :cond_b
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "There isn\'t stateId matched with request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    goto/16 :goto_0
.end method
