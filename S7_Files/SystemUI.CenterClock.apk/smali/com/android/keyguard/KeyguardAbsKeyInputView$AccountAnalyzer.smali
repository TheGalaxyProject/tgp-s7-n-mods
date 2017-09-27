.class Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 668
    const-string/jumbo v0, "com.osp.app.signin"

    .line 669
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 668
    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 666
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-set0(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get1(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 681
    :cond_1
    return-void

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    .line 686
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    .line 685
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 672
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string/jumbo v2, "KeyguardAbsKeyInputView"

    const-string/jumbo v3, "AccountManagerFuture() run: "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 699
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-set0(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 706
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    .line 695
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    .local v0, "ignored":Ljava/lang/Exception;
    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 706
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 704
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 705
    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 706
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    .line 704
    throw v2
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-set0(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 691
    iput v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->mAccountIndex:I

    .line 692
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->next()V

    .line 689
    return-void
.end method
