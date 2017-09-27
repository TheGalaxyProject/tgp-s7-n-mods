.class Lcom/android/settings/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/SortedMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private getCCMCertificateForAlias(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    const/4 v1, 0x0

    return-object v1

    .line 474
    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "x509Certificates":[Ljava/security/cert/X509Certificate;
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 476
    .local v0, "x509Certificates":[Ljava/security/cert/X509Certificate;
    return-object v0
.end method

.method private getCCMPrivateKeyAliases()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    return-object v3

    .line 458
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "ccmAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 461
    if-nez v0, :cond_1

    .line 462
    return-object v3

    .line 465
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 467
    .local v1, "result":[Ljava/lang/String;
    return-object v1
.end method

.method private getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 534
    if-nez p1, :cond_0

    .line 535
    return-object v3

    .line 537
    :cond_0
    const/4 v1, 0x0

    .line 538
    .local v1, "fridenlyName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    .line 539
    .local v0, "credMgr":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "fridenlyName":Ljava/lang/String;
    return-object v1
.end method

.method private getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 500
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 501
    :cond_0
    return-object v6

    .line 504
    :cond_1
    const/4 v3, 0x0

    .line 505
    .local v3, "x509Certificate":Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 506
    .local v2, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v2, :cond_2

    .line 507
    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    .line 508
    .local v1, "ret":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    if-eqz v1, :cond_2

    .line 509
    iget-object v4, v1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-direct {p0, v4}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->toCertificate([B)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 512
    .end local v1    # "ret":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .end local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    return-object v3

    .line 513
    .end local v2    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .restart local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UserCredentialsSettings"

    const-string/jumbo v5, "Failed to getUCMCertificate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    return-object v6
.end method

.method private getUCMPrivateKeyAliases()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 482
    const/4 v3, 0x0

    .line 483
    .local v3, "result":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 484
    .local v1, "flag":I
    const/16 v4, 0x3e8

    .line 485
    .local v4, "senderUid":I
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string/jumbo v7, "KNOX"

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    .line 488
    .local v0, "credMgr":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
    if-nez v0, :cond_0

    .line 489
    return-object v8

    .line 492
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 493
    .local v2, "response":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 494
    const-string/jumbo v6, "stringarrayresponse"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 496
    .end local v3    # "result":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 520
    if-nez p1, :cond_0

    .line 521
    return-object v5

    .line 524
    :cond_0
    :try_start_0
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 525
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 526
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    .line 527
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v3, "UserCredentialsSettings"

    const-string/jumbo v4, "Failed to toCertificate"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    return-object v5
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/SortedMap;
    .locals 25
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v10, v0

    .line 339
    .local v10, "max":I
    const/4 v11, 0x0

    .line 343
    .local v11, "progress":I
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 344
    .local v7, "credentials":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/android/settings/UserCredentialsSettings$Credential;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    .line 345
    .local v9, "keyStore":Landroid/security/KeyStore;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMPrivateKeyAliases()[Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "ccmPkeyAlias":[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v20

    const/16 v18, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v19, v18

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v13, v20, v19

    .line 347
    .local v13, "type":Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    iget-object v0, v13, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v18, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v2, v22, v18

    .line 349
    .local v2, "alias":Ljava/lang/String;
    const-string/jumbo v24, "profile_key_name_encrypt_"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 350
    const-string/jumbo v24, "profile_key_name_decrypt_"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 349
    if-eqz v24, :cond_1

    .line 347
    :cond_0
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 353
    :cond_1
    invoke-interface {v7, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 354
    .local v3, "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    if-nez v3, :cond_2

    .line 355
    new-instance v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    invoke-direct {v3, v2}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;)V

    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    invoke-interface {v7, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_2
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 359
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    :cond_3
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v18, v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v18, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto :goto_0

    .line 363
    .end local v13    # "type":Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    :cond_4
    if-eqz v6, :cond_9

    .line 364
    const/16 v18, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v19, v18

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v5, v6, v19

    .line 365
    .local v5, "ccmKeyalias":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v21, " [Knox]"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 366
    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    if-nez v3, :cond_7

    .line 367
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v21, " [Knox]"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " [Knox]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get0()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    move-object/from16 v0, v18

    invoke-interface {v7, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v18, v0

    sget-object v21, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMCertificateForAlias(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 370
    .local v4, "ccmCertList":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_7

    .line 371
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v17, v4, v18

    .line 372
    .local v17, "x509":Ljava/security/cert/X509Certificate;
    if-eqz v17, :cond_5

    .line 373
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v22

    if-lez v22, :cond_6

    .line 374
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual/range {v22 .. v23}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_5
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 376
    :cond_6
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual/range {v22 .. v23}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 364
    .end local v4    # "ccmCertList":[Ljava/security/cert/X509Certificate;
    .end local v17    # "x509":Ljava/security/cert/X509Certificate;
    :cond_7
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_3

    .line 383
    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    .end local v5    # "ccmKeyalias":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 389
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMPrivateKeyAliases()[Ljava/lang/String;

    move-result-object v16

    .line 390
    .local v16, "ucmPkeyAlias":[Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 391
    const/16 v18, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-object v15, v16, v18

    .line 392
    .local v15, "ucmKeyalias":Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 393
    .local v12, "rawUcmAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "friendlyName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 395
    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    if-nez v3, :cond_c

    .line 396
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get1()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    move-object/from16 v0, v20

    invoke-interface {v7, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_a
    :goto_7
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual/range {v20 .. v21}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    .line 404
    .local v14, "ucmCert":Ljava/security/cert/X509Certificate;
    if-eqz v14, :cond_b

    .line 405
    iget-object v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual/range {v20 .. v21}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 398
    .end local v14    # "ucmCert":Ljava/security/cert/X509Certificate;
    :cond_c
    iget v0, v3, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    move/from16 v20, v0

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get1()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 399
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Lcom/android/settings/UserCredentialsSettings$Credential;

    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get1()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    move-object/from16 v0, v20

    invoke-interface {v7, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 409
    .end local v3    # "c":Lcom/android/settings/UserCredentialsSettings$Credential;
    .end local v8    # "friendlyName":Ljava/lang/String;
    .end local v12    # "rawUcmAlias":Ljava/lang/String;
    .end local v15    # "ucmKeyalias":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 412
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 428
    check-cast p1, Ljava/util/SortedMap;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/SortedMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/SortedMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "credentials":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/android/settings/UserCredentialsSettings$Credential;>;"
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 433
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 436
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get0(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get2(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :goto_0
    if-eqz v0, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get0(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 447
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v5, v5, [Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 446
    const v5, 0x7f040302

    invoke-direct {v3, v4, v5, v1}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/UserCredentialsSettings$Credential;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    :goto_1
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get2(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->-get0(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_1
    const-string/jumbo v1, "UserCredentialsSettings"

    const-string/jumbo v2, "Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings;->-get0(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings;->-get2(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 418
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 419
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 420
    .local v0, "max":I
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings;->-get1(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 417
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progressAndMax"    # [Ljava/lang/Object;

    .prologue
    .line 417
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "progressAndMax":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
