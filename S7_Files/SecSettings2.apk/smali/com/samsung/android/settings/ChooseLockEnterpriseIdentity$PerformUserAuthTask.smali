.class Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
.super Landroid/os/AsyncTask;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 216
    const/4 v6, -0x2

    .line 217
    .local v6, "result":I
    const-string/jumbo v9, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v10, "PerformUserAuthTask:performUserAuthentication "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 220
    .local v2, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    if-eqz v2, :cond_5

    .line 222
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v9

    .line 223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 221
    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 224
    .local v0, "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 235
    .local v5, "reqBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    if-nez v9, :cond_6

    .line 236
    new-instance v9, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v9}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    .line 237
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "reqBundle":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v5, "reqBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v9, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    .line 239
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    .line 240
    const-string/jumbo v10, "com.sec.android.service.singlesignon"

    .line 239
    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    .line 255
    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v10, "2"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_2
    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 265
    const-string/jumbo v9, "PASSWORD_MIN_CHARACTERS_KEY"

    .line 266
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get4(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 265
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string/jumbo v9, "PASSWORD_MAX_CHARACTERS_KEY"

    .line 268
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get3(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 267
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string/jumbo v9, "PASSWORD_MIN_LETTERS_KEY"

    .line 270
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get5(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 269
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string/jumbo v9, "PASSWORD_MIN_UPPERCASE_KEY"

    .line 272
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get10(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 271
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string/jumbo v9, "PASSWORD_MIN_LOWERCASE_KEY"

    .line 274
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get6(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 273
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string/jumbo v9, "PASSWORD_MIN_SYMBOLS_KEY"

    .line 276
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get9(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 275
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string/jumbo v9, "PASSWORD_MIN_NUMERIC_KEY"

    .line 278
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get8(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 277
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string/jumbo v9, "PASSWORD_MIN_NONLETTER_KEY"

    .line 280
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get7(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    .line 279
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string/jumbo v9, "PASSWORD_HISTORY_LENGTH_KEY"

    .line 282
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v10

    .line 281
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string/jumbo v9, "PASSWORD_MIN_COMPLEX_CHARACTERS_KEY"

    .line 284
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v10

    .line 283
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string/jumbo v9, "PASSWORD_PATTERN_RESTRICTIONS_KEY"

    .line 286
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v10

    .line 285
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v9, "PASSWORD_MAX_NUMERIC_SEQUENCE_LENGTH_KEY"

    .line 288
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v10

    .line 287
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string/jumbo v9, "PASSWORD_MAX_CHARACTER_SEQUENCE_LENGTH_KEY"

    .line 290
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v10

    .line 289
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v9, "PASSWORD_MIN_CHARACTER_CHANGE_LENGTH_KEY"

    .line 292
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v10

    .line 291
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v4, "forbiddenStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    .line 295
    .local v3, "fetchedStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_2
    const-string/jumbo v9, "PASSWORD_FORBIDDEN_STRINGS_KEY"

    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 300
    const-string/jumbo v9, "PASSWORD_MAX_CHARCTER_OCCURENCES_KEY"

    .line 301
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v10

    .line 300
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    .end local v3    # "fetchedStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "forbiddenStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v9, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    .line 305
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v9

    .line 306
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    .line 305
    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->performUserAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v8

    .line 307
    .local v8, "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    const/4 v7, 0x0

    .line 308
    .local v7, "retBundle":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 310
    invoke-virtual {v8}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 312
    .local v7, "retBundle":Landroid/os/Bundle;
    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    .line 311
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    .line 314
    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    .line 313
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    .line 317
    .end local v7    # "retBundle":Landroid/os/Bundle;
    :cond_4
    return-object v7

    .line 229
    .end local v5    # "reqBundle":Landroid/os/Bundle;
    .end local v8    # "tokenInfo":Lcom/samsung/android/knox/sso/common/TokenInfo;
    .restart local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_5
    :try_start_1
    const-string/jumbo v9, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v10, "ekm is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 231
    .end local v2    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SecurityException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    .end local v1    # "e":Ljava/lang/SecurityException;
    .local v5, "reqBundle":Landroid/os/Bundle;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v9}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v5

    .line 243
    .local v5, "reqBundle":Landroid/os/Bundle;
    if-nez v5, :cond_7

    .line 244
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "reqBundle":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 248
    .restart local v5    # "reqBundle":Landroid/os/Bundle;
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v9}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 249
    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    .line 250
    const-string/jumbo v10, "com.sec.android.service.singlesignon"

    .line 249
    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :cond_8
    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v10, "4"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v9, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    .line 261
    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v10

    .line 260
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # [Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "str":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "authBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 323
    const/4 v2, -0x1

    .line 324
    .local v2, "result":I
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 325
    .local v1, "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez p1, :cond_1

    .line 326
    const/4 v2, -0x1

    .line 331
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 360
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v5, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    .line 362
    :cond_0
    :goto_1
    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    .line 363
    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    .line 364
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    .line 321
    return-void

    .line 329
    :cond_1
    sget-object v5, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    .line 328
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 333
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 335
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v5, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    .line 336
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    .line 337
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-eqz v1, :cond_0

    .line 339
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getFidoRpContext(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "rpContext":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->setFidoRpContext(ILjava/lang/String;)V

    .line 342
    const-string/jumbo v5, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v6, "Changed to Enterprise ID : Clear Fido RP context"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v3    # "rpContext":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 348
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 349
    const/4 v2, -0x1

    .line 350
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v5, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    goto :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "authBundle"    # Ljava/lang/Object;

    .prologue
    .line 321
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "authBundle":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
