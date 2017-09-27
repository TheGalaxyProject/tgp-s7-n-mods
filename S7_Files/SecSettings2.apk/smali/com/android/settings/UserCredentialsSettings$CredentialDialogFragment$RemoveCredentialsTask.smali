.class Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isCCMAlias:Z

.field private targetFragment:Landroid/app/Fragment;

.field final synthetic this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "targetFragment"    # Landroid/app/Fragment;
    .param p4, "isCCMAlias"    # Z

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->isCCMAlias:Z

    .line 262
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->context:Landroid/content/Context;

    .line 263
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    .line 264
    iput-boolean p4, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->isCCMAlias:Z

    .line 261
    return-void
.end method

.method private removeCCMKeyPair(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 304
    :try_start_0
    const-string/jumbo v3, "knox_ccm_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    .line 305
    .local v0, "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v3, "CredentialDialogFragment"

    const-string/jumbo v4, "Failed to get CCM System service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    const-string/jumbo v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "rawAlias":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    const-string/jumbo v3, "CredentialDialogFragment"

    const-string/jumbo v4, "Failed to remove CCM keypair "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .end local v1    # "rawAlias":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "CredentialDialogFragment"

    const-string/jumbo v4, "Failed to remove CCM keypair"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "aliases"    # [Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "aliases":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 269
    iget-boolean v6, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->isCCMAlias:Z

    if-eqz v6, :cond_1

    .line 270
    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    .line 271
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->removeCCMKeyPair(Ljava/lang/String;)V

    .line 270
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v7

    .line 276
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v6}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 278
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 279
    .local v4, "keyChain":Landroid/security/IKeyChainService;
    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, p1, v5

    .line 280
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v4, v0}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v4    # "keyChain":Landroid/security/IKeyChainService;
    :goto_2
    return-object v7

    .line 282
    .restart local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "CredentialDialogFragment"

    const-string/jumbo v6, "Removing credentials"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 287
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 288
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "CredentialDialogFragment"

    const-string/jumbo v6, "Connecting to keychain"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 284
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v5

    .line 285
    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 284
    throw v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 294
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/UserCredentialsSettings;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    .line 294
    :cond_0
    return-void
.end method
