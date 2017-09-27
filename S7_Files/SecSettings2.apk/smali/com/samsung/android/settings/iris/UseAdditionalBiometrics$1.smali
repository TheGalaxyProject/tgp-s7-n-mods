.class Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
.super Landroid/content/BroadcastReceiver;
.source "UseAdditionalBiometrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-virtual {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 77
    :cond_2
    return-void
.end method
