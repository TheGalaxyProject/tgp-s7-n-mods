.class Lcom/android/keyguard/KeyguardAccountView$6;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->asyncCheckSAPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 478
    const-string/jumbo v1, "2kbfdax337"

    .line 479
    .local v1, "client_id":Ljava/lang/String;
    const-string/jumbo v2, "BB8A5C25AE13720FCBC1806F16D961F6"

    .line 480
    .local v2, "client_secret":Ljava/lang/String;
    const-string/jumbo v4, "com.android.systemui"

    .line 481
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardAccountView;->-get8(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "password":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardAccountView;->-set1(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 484
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardAccountView;->-set3(Lcom/android/keyguard/KeyguardAccountView;I)I

    .line 486
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardAccountView;->-get3(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v7

    const-string/jumbo v8, "2kbfdax337"

    const-string/jumbo v9, "BB8A5C25AE13720FCBC1806F16D961F6"

    .line 487
    const-string/jumbo v10, "com.android.systemui"

    iget-object v11, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v11}, Lcom/android/keyguard/KeyguardAccountView;->-get11(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardAccountView$SACallback;

    move-result-object v11

    .line 486
    invoke-interface {v7, v8, v9, v10, v11}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardAccountView;->-set2(Lcom/android/keyguard/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "password"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardAccountView;->-get3(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardAccountView;->-get10(Lcom/android/keyguard/KeyguardAccountView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardAccountView;->-get9(Lcom/android/keyguard/KeyguardAccountView;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v0}, Lcom/msc/sa/aidl/ISAService;->requestPasswordConfirmation(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$6;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAccountView;->-set1(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 496
    return-void
.end method
