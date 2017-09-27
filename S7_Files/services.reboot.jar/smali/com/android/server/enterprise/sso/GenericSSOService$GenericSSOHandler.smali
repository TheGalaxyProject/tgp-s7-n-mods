.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 290
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 296
    .local v37, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 297
    .local v13, "configData":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 298
    .local v11, "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 293
    .end local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .end local v13    # "configData":Landroid/os/Bundle;
    .end local v37    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 301
    .restart local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .restart local v13    # "configData":Landroid/os/Bundle;
    .restart local v37    # "userId":I
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v11, v0

    .line 302
    .local v11, "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v37

    invoke-static {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v34

    .line 304
    .local v34, "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    if-eqz v11, :cond_0

    .line 305
    if-eqz v34, :cond_1

    .line 306
    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    .line 307
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Getting a token successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .end local v34    # "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :catch_0
    move-exception v16

    .line 315
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 310
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .restart local v34    # "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v11, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    .line 311
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Failed to get a token"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 320
    .end local v34    # "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .local v11, "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v11, v0

    .line 321
    .local v11, "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v37

    invoke-virtual {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v39

    .line 323
    .local v39, "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    if-eqz v11, :cond_0

    .line 324
    if-eqz v39, :cond_2

    .line 325
    move-object/from16 v0, v39

    invoke-interface {v11, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 329
    .end local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .end local v39    # "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    :catch_1
    move-exception v16

    .line 330
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v11    # "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    .restart local v39    # "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    :cond_2
    const/4 v2, -0x1

    :try_start_3
    invoke-interface {v11, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 334
    .end local v39    # "userInfo":Lcom/samsung/android/knox/sso/common/UserInfo;
    .local v11, "callback":Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    .line 335
    .local v12, "config":Lcom/samsung/android/knox/sso/config/GenericSSOConfig;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 336
    .local v8, "adminUid":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 339
    .local v7, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 341
    .local v26, "identity":J
    const-string/jumbo v2, "application_policy"

    .line 340
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 342
    .local v10, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v10, :cond_4

    .line 343
    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 345
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In handleMessage: Installing application in container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    .line 348
    :cond_4
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    const/16 v30, -0x1

    .line 351
    .local v30, "ret":I
    const/16 v25, 0x0

    .line 352
    .local v25, "isConfiguredByFile":Z
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v8, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 353
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 354
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v30

    .line 356
    const/16 v25, 0x1

    .line 363
    :goto_1
    if-gez v30, :cond_6

    .line 364
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Enrollment is failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    if-nez v25, :cond_0

    if-nez v30, :cond_0

    .line 366
    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v30

    .line 369
    if-gez v30, :cond_0

    .line 370
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 358
    :cond_8
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {v12}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    .line 359
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap3(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v30

    goto :goto_1

    .line 379
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "containerId":I
    .end local v8    # "adminUid":I
    .end local v10    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v12    # "config":Lcom/samsung/android/knox/sso/config/GenericSSOConfig;
    .end local v25    # "isConfiguredByFile":Z
    .end local v26    # "identity":J
    .end local v30    # "ret":I
    :pswitch_4
    const/16 v23, 0x0

    .line 380
    .local v23, "enrolledVendorExist":Z
    :try_start_4
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v41, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/UserManager;

    .line 382
    .local v35, "um":Landroid/os/UserManager;
    if-eqz v35, :cond_a

    .line 383
    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v41

    .line 385
    :cond_a
    if-eqz v41, :cond_d

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 386
    invoke-interface/range {v41 .. v41}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "userInfo$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/UserInfo;

    .line 387
    .local v38, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v38

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    .line 388
    .local v15, "currentUserHandle":I
    move/from16 v0, v37

    if-eq v15, v0, :cond_b

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v14

    .line 392
    .local v14, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    const/16 v22, 0x0

    .line 393
    .local v22, "enrolledVendor":Lorg/w3c/dom/Node;
    const/16 v28, 0x0

    .line 394
    .local v28, "mdmUidNode":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_b

    .line 395
    invoke-static {v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 396
    .local v22, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v22, :cond_b

    .line 397
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 398
    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_c
    const/16 v23, 0x1

    .line 406
    .end local v14    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v15    # "currentUserHandle":I
    .end local v22    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v28    # "mdmUidNode":Lorg/w3c/dom/Node;
    .end local v38    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v40    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_d
    if-nez v23, :cond_0

    .line 407
    const/16 v24, 0x0

    .line 408
    .local v24, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 409
    .local v32, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap4(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    .line 410
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "timakeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 411
    const-string/jumbo v9, "GenericSSOService"

    .line 412
    .local v9, "alias":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 413
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v9    # "alias":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    :cond_e
    :goto_2
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 431
    .end local v32    # "token":J
    .end local v35    # "um":Landroid/os/UserManager;
    .end local v41    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_2
    move-exception v19

    .line 432
    .local v19, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecurityException"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 416
    .end local v19    # "e":Ljava/lang/SecurityException;
    .restart local v24    # "file":Ljava/io/File;
    .restart local v32    # "token":J
    .restart local v35    # "um":Landroid/os/UserManager;
    .restart local v41    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    .line 417
    const-string/jumbo v4, "androidkeystore"

    .line 416
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 418
    const-string/jumbo v9, "KnoxSSOKey"

    .line 419
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 420
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 422
    new-instance v24, Ljava/io/File;

    .end local v24    # "file":Ljava/io/File;
    const-string/jumbo v2, "/data/system/KnoxSSO_SCKF"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v24, "file":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 425
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 426
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 433
    .end local v9    # "alias":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    .end local v32    # "token":J
    .end local v35    # "um":Landroid/os/UserManager;
    .end local v41    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_3
    move-exception v21

    .line 434
    .local v21, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: NoSuchAlgorithmException"

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 439
    .end local v21    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v18

    .line 440
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Exception"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 437
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 438
    .local v17, "e":Ljava/io/IOException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: IOException"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 435
    .end local v17    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v20

    .line 436
    .local v20, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyStoreException"

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 444
    .end local v20    # "e":Ljava/security/KeyStoreException;
    .end local v23    # "enrolledVendorExist":Z
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 445
    .local v31, "setValue":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    .line 446
    .local v36, "unenrolledPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v29

    .line 447
    .local v29, "packageName":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_10

    .line 448
    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In setunenroll:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_10
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;

    move-result-object v4

    .line 450
    move/from16 v0, v31

    move/from16 v1, v37

    invoke-static {v2, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
