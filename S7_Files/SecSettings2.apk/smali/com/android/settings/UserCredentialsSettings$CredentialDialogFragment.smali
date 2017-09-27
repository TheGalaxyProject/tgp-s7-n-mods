.class public Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.super Landroid/app/DialogFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static isKeyChainInstalledAlias(Ljava/lang/String;)Z
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v3, 0x0

    .line 241
    .local v3, "result":Z
    :try_start_0
    const-string/jumbo v4, "knox_ccm_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    .line 242
    .local v0, "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v4, "CredentialDialogFragment"

    const-string/jumbo v5, "Failed to get CCM System service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "rawAlias":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v4, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 250
    .end local v0    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .end local v1    # "rawAlias":Ljava/lang/String;
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 247
    .restart local v3    # "result":Z
    :catch_0
    move-exception v2

    .line 248
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "CredentialDialogFragment"

    const-string/jumbo v5, "Check keychain installed alias for CCM"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 4
    .param p0, "target"    # Landroid/app/Fragment;
    .param p1, "item"    # Lcom/android/settings/UserCredentialsSettings$Credential;

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "credential"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CredentialDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;-><init>()V

    .line 154
    .local v1, "frag":Landroid/app/DialogFragment;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 155
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CredentialDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 148
    .end local v1    # "frag":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "credential"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 163
    .local v5, "item":Lcom/android/settings/UserCredentialsSettings$Credential;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    .line 164
    const v14, 0x7f040303

    const/4 v15, 0x0

    .line 163
    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 165
    .local v10, "root":Landroid/view/View;
    const v13, 0x7f1106d2

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 166
    .local v4, "infoContainer":Landroid/view/ViewGroup;
    new-instance v13, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 167
    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/settings/UserCredentialsSettings$Credential;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    .line 166
    const v16, 0x7f040302

    move/from16 v0, v16

    invoke-direct {v13, v14, v0, v15}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 167
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 166
    invoke-virtual/range {v13 .. v16}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 168
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 173
    .local v11, "userManager":Landroid/os/UserManager;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 175
    const v14, 0x7f0b1830

    .line 173
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 176
    const v14, 0x7f0b1108

    const/4 v15, 0x0

    .line 173
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v9, "no_config_credentials"

    .line 179
    .local v9, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 180
    .local v7, "myUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "no_config_credentials"

    invoke-static {v13, v14, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 181
    new-instance v6, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v5}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 201
    .local v6, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v13, 0x7f0b1827

    invoke-virtual {v1, v13, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    .end local v6    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 205
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v2

    .line 207
    .local v2, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    const/4 v13, -0x2

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 208
    .local v8, "removeButton":Landroid/widget/Button;
    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 215
    :cond_1
    :goto_0
    iget v13, v5, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get1()I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 216
    const/4 v13, -0x2

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 217
    if-eqz v8, :cond_2

    .line 218
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    :cond_2
    iget v13, v5, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get0()I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 225
    iget-object v13, v5, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->isKeyChainInstalledAlias(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 226
    const/4 v13, -0x2

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 227
    if-eqz v8, :cond_3

    .line 228
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    :cond_3
    return-object v3

    .line 209
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
