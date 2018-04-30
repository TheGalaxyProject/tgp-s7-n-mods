.class Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 5

    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string/jumbo v2, "free"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string/jumbo v2, "ejecting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get8(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "busy"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "status busy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set0(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get6(Lcom/android/settings/encryption/CryptSDCardSettings;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, p5}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set1(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    :cond_5
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "Mount"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "status mount"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get8(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v2, "MasterClearConfirm"

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "MasterClearConfirm Case , Device will be Reset to Factory Default !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "Normal Decryption Success Case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "ignore status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
