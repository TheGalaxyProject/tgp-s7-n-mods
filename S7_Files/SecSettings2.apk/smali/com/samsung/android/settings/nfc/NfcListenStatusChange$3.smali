.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 209
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->finish()V

    .line 208
    :cond_1
    return-void

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 213
    .local v1, "setret":Z
    if-eqz v1, :cond_3

    .line 214
    const-string/jumbo v2, "00001,2"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 215
    .local v0, "ret":Z
    if-eqz v0, :cond_3

    .line 216
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .end local v0    # "ret":Z
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    goto :goto_0
.end method
