.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 560
    const/4 v12, 0x1

    .line 562
    .local v12, "success":Z
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    invoke-direct {v2, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 563
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    sget-object v16, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/settings/CredentialStorage;->-set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Lcom/android/settings/CredentialStorage;->-get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Lcom/android/settings/CredentialStorage;->-get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v15

    invoke-interface {v15}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v1

    .line 566
    :goto_0
    const-string/jumbo v15, "3.0"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Lcom/android/settings/CredentialStorage;->-get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Lcom/android/settings/CredentialStorage;->-get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v15

    invoke-interface {v15, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Lcom/android/settings/CredentialStorage;->-get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v15

    invoke-interface {v15, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v12

    .line 570
    .local v12, "success":Z
    if-eqz v12, :cond_3

    .line 571
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "Successfully deleted certificates from CCM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v12    # "success":Z
    :cond_0
    :goto_1
    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    .line 589
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    .line 590
    .local v11, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v11, :cond_6

    .line 591
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "pi$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 594
    .local v9, "pi":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    .line 595
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 594
    invoke-static/range {v15 .. v16}, Lcom/android/settings/CredentialStorage;->-wrap1(Lcom/android/settings/CredentialStorage;I)Z

    move-result v7

    .line 597
    .local v7, "isClearAllowedForUser":Z
    if-nez v7, :cond_5

    .line 599
    const-string/jumbo v15, "CredentialStorage"

    .line 600
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Clear not allowed for userId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 601
    const-string/jumbo v17, " (isUserRemoveCertificatesAllowedAsUser == false)"

    .line 600
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 599
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 564
    .end local v7    # "isClearAllowedForUser":Z
    .end local v9    # "pi":Landroid/content/pm/UserInfo;
    .end local v10    # "pi$iterator":Ljava/util/Iterator;
    .end local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v12, "success":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "ccmVersion":Ljava/lang/String;
    goto/16 :goto_0

    .line 573
    .end local v1    # "ccmVersion":Ljava/lang/String;
    .local v12, "success":Z
    :cond_3
    :try_start_1
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "Error deleting certificates from CCM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 581
    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v12    # "success":Z
    :catch_0
    move-exception v3

    .line 582
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    .line 583
    .local v12, "success":Z
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "Failed at ClientCertificateManager reset API"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 577
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_4
    const/4 v12, 0x0

    .line 578
    :try_start_2
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "CCM Service is NOT available on this device"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 607
    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v12    # "success":Z
    .restart local v7    # "isClearAllowedForUser":Z
    .restart local v9    # "pi":Landroid/content/pm/UserInfo;
    .restart local v10    # "pi$iterator":Ljava/util/Iterator;
    .restart local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    invoke-static {}, Lcom/android/settings/CredentialStorage;->-get0()[I

    move-result-object v16

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    aget v14, v16, v15

    .line 608
    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/CredentialStorage;->-get2(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v18

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/security/KeyStore;->clearUid(I)Z

    .line 607
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 616
    .end local v7    # "isClearAllowedForUser":Z
    .end local v9    # "pi":Landroid/content/pm/UserInfo;
    .end local v10    # "pi$iterator":Ljava/util/Iterator;
    .end local v14    # "uid":I
    :cond_6
    :try_start_3
    const-string/jumbo v15, "com.samsung.ucs.ucsservice"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v13

    .line 617
    .local v13, "ucmeService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v13, :cond_7

    .line 618
    invoke-interface {v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->resetNonMdmCertificates()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 627
    .end local v13    # "ucmeService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_7
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v15}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    .line 629
    .local v8, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_5
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v15

    invoke-interface {v15}, Landroid/security/IKeyChainService;->reset()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v15

    .line 633
    :try_start_6
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    .line 629
    return-object v15

    .line 620
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v4

    .line 621
    .local v4, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 622
    .restart local v12    # "success":Z
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "Failed at UCS CredentialManagerService (IUcmService) reset API"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 630
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v12    # "success":Z
    .restart local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v3

    .line 631
    .restart local v3    # "e":Landroid/os/RemoteException;
    const/4 v15, 0x0

    :try_start_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v15

    .line 633
    :try_start_8
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 631
    return-object v15

    .line 632
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v15

    .line 633
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 632
    throw v15
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    .line 635
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v6

    .line 636
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 637
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    return-object v15

    .line 639
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v5

    .line 640
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "CredentialStorage"

    const-string/jumbo v16, "CredentialStorage is destroyed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    return-object v15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 557
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    .line 649
    const v1, 0x7f0b1722

    .line 648
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 654
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 646
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    .line 652
    const v1, 0x7f0b1723

    .line 651
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 646
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
