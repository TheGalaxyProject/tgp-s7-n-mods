.class Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTaskUCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method private constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 726
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 727
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v7

    .line 728
    .local v7, "service":Landroid/os/storage/IMountService;
    const/4 v9, 0x3

    new-array v5, v9, [I

    .line 730
    .local v5, "ret":[I
    const/4 v9, -0x1

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 731
    const/4 v9, -0x1

    const/4 v10, 0x1

    aput v9, v5, v10

    .line 732
    const/4 v9, -0x1

    const/4 v10, 0x2

    aput v9, v5, v10

    .line 736
    if-eqz v7, :cond_7

    .line 737
    :try_start_0
    const-string/jumbo v9, "UCSCryptKeeperTask"

    const-string/jumbo v10, "DecryptTask isUcsOdeEnabled : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string/jumbo v8, ""

    .line 741
    .local v8, "uri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->-get11(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v8

    .line 743
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->-get4(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 744
    const/4 v4, 0x0

    .line 745
    .local v4, "pukRet":[I
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v10, v10, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    .line 748
    .local v4, "pukRet":[I
    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 749
    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x1

    aput v9, v5, v10

    .line 750
    const/4 v9, 0x2

    aget v9, v4, v9

    const/4 v10, 0x2

    aput v9, v5, v10

    .line 773
    .end local v4    # "pukRet":[I
    :goto_0
    const-string/jumbo v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Return Values are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v9, 0x0

    aget v9, v5, v9

    if-nez v9, :cond_6

    .line 776
    const/4 v6, -0x1

    .line 779
    .local v6, "retcrypto":I
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->-get5(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 780
    const-string/jumbo v9, "boot_test"

    invoke-interface {v7, v9}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v6

    .line 786
    :goto_1
    const-string/jumbo v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "decryptStorage return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-eqz v6, :cond_0

    .line 790
    const v9, 0xfffe

    const/4 v10, 0x2

    aput v9, v5, v10

    .line 791
    const-string/jumbo v9, "security.ucs.error_code"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v9, "security.ucs.error_code"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string/jumbo v9, "NONE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aput v9, v5, v10

    .line 802
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v6    # "retcrypto":I
    :cond_0
    :goto_2
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 803
    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->-get10()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 804
    return-object v5

    .line 753
    :cond_1
    const/4 v3, 0x0

    .line 754
    .local v3, "pinRet":[I
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v9, v8}, Lcom/samsung/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 756
    .local v3, "pinRet":[I
    const/4 v9, 0x0

    aget v9, v3, v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_2

    .line 757
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 758
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x1

    aput v9, v5, v10

    .line 769
    :goto_3
    const/4 v9, 0x2

    aget v9, v3, v9

    const/4 v10, 0x2

    aput v9, v5, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 807
    .end local v3    # "pinRet":[I
    .end local v8    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "UCSCryptKeeperTask"

    const-string/jumbo v10, "Error while decrypting..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 810
    const/4 v9, 0x0

    return-object v9

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "pinRet":[I
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget v9, v3, v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_3

    .line 760
    const/4 v9, -0x1

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 761
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x1

    aput v9, v5, v10

    goto :goto_3

    .line 762
    :cond_3
    const/4 v9, 0x0

    aget v9, v3, v9

    const/16 v10, 0x85

    if-ne v9, v10, :cond_4

    .line 763
    const v9, 0xffef

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 764
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x1

    aput v9, v5, v10

    goto :goto_3

    .line 766
    :cond_4
    const/4 v9, -0x1

    const/4 v10, 0x0

    aput v9, v5, v10

    .line 767
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x1

    aput v9, v5, v10

    goto :goto_3

    .line 782
    .end local v3    # "pinRet":[I
    .restart local v6    # "retcrypto":I
    :cond_5
    invoke-static {v8}, Lcom/samsung/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "password":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1

    .line 799
    .end local v2    # "password":Ljava/lang/String;
    .end local v6    # "retcrypto":I
    :cond_6
    const-string/jumbo v9, "UCSCryptKeeperTask"

    const-string/jumbo v10, "DecryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 806
    .end local v8    # "uri":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Object;

    .prologue
    .line 815
    check-cast p1, [I

    .end local p1    # "status":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 818
    if-nez p1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    .line 820
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 825
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v1

    const v2, 0x7f1101f5

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 832
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0b0659

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 833
    const-string/jumbo v1, "security.ode.cryptkeeper.status"

    const-string/jumbo v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v0    # "statusView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, p1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 721
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 722
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap1(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 720
    return-void
.end method
