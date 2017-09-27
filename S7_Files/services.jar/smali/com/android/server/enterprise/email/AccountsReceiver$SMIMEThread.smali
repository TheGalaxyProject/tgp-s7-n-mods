.class Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SMIMEThread"
.end annotation


# instance fields
.field private mAccId:J

.field private mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .locals 0
    .param p1, "accountSMIME"    # Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .param p2, "accId"    # J

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 281
    iput-wide p2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    .line 278
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v4, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 286
    .local v4, "mSMIMECertificatePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 287
    .local v5, "mSMIMECertificatePassWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget v8, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 288
    .local v8, "mode":I
    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v1, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 289
    .local v1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v9, 0x0

    .line 290
    .local v9, "ret":I
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " , "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :try_start_0
    const-string/jumbo v2, "eas_account_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    .line 293
    .local v0, "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1

    .line 295
    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 312
    .end local v0    # "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 297
    .restart local v0    # "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    :cond_1
    const/4 v2, 0x2

    if-ne v8, v2, :cond_2

    .line 299
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 301
    :cond_2
    const/4 v2, 0x3

    if-ne v8, v2, :cond_0

    .line 303
    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_0

    .line 308
    .end local v0    # "mService":Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    :catch_0
    move-exception v7

    .line 309
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v9, 0x0

    goto :goto_0

    .line 305
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 306
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const/4 v9, 0x0

    goto :goto_0
.end method
