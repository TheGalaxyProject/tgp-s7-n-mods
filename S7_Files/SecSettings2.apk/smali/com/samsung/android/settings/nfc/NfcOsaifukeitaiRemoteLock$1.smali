.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiRemoteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock$1;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiRemoteLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    return-void
.end method
