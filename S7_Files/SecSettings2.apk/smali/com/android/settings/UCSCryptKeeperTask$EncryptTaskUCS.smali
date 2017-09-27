.class Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptTaskUCS"
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
    .line 841
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 849
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 850
    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 851
    .local v5, "service":Landroid/os/storage/IMountService;
    const/4 v8, 0x3

    new-array v4, v8, [I

    .line 853
    .local v4, "ret":[I
    aput v10, v4, v11

    .line 854
    aput v10, v4, v12

    .line 855
    aput v10, v4, v9

    .line 859
    if-eqz v5, :cond_7

    .line 860
    :try_start_0
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptTask isUcsOdeEnabled : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string/jumbo v7, ""

    .line 864
    .local v7, "uri":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get11(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v7

    .line 866
    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get4(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 867
    const/4 v3, 0x0

    .line 868
    .local v3, "pukRet":[I
    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v8, v8, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 871
    .local v3, "pukRet":[I
    const/4 v8, 0x0

    aget v8, v3, v8

    const/4 v9, 0x0

    aput v8, v4, v9

    .line 872
    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    .line 873
    const/4 v8, 0x2

    aget v8, v3, v8

    const/4 v9, 0x2

    aput v8, v4, v9

    .line 895
    .end local v3    # "pukRet":[I
    :goto_0
    const-string/jumbo v8, "UCSCryptKeeperTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Return Values are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v8, 0x0

    aget v8, v4, v8

    if-nez v8, :cond_6

    .line 900
    const-string/jumbo v8, "persist.security.ucs"

    const-string/jumbo v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string/jumbo v8, "security.ode.encrypting"

    const-string/jumbo v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string/jumbo v8, "sys.sec_device_encryption"

    const-string/jumbo v9, "fast"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v6, ""

    .line 904
    .local v6, "ucsPassword":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get2(Lcom/android/settings/UCSCryptKeeperTask;)I

    move-result v8

    if-ne v8, v12, :cond_5

    .line 905
    const-string/jumbo v6, "ucs_savein_false"

    .line 909
    :goto_1
    const/4 v8, 0x0

    invoke-interface {v5, v8, v6}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I

    .line 910
    const/4 v8, 0x0

    const/4 v9, 0x2

    aput v8, v4, v9

    .line 911
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptStorage passed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string/jumbo v8, "security.ucs.error_code"

    const-string/jumbo v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "security.ucs.error_code"

    const-string/jumbo v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string/jumbo v8, "NONE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 916
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aput v8, v4, v9

    .line 923
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_0
    :goto_2
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    .line 924
    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->-get10()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    .line 925
    return-object v4

    .line 876
    :cond_1
    const/4 v2, 0x0

    .line 877
    .local v2, "pinRet":[I
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-static {v8, v7}, Lcom/samsung/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 879
    .local v2, "pinRet":[I
    const/4 v8, 0x0

    aget v8, v2, v8

    const/16 v9, 0x83

    if-ne v8, v9, :cond_2

    .line 880
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v4, v9

    .line 881
    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    .line 892
    :goto_3
    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x2

    aput v8, v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 928
    .end local v2    # "pinRet":[I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "Error while encrypting..."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    .line 931
    return-object v13

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinRet":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    :try_start_1
    aget v8, v2, v8

    const/16 v9, 0x84

    if-ne v8, v9, :cond_3

    .line 883
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v4, v9

    .line 884
    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_3

    .line 885
    :cond_3
    const/4 v8, 0x0

    aget v8, v2, v8

    const/16 v9, 0x85

    if-ne v8, v9, :cond_4

    .line 886
    const v8, 0xffef

    const/4 v9, 0x0

    aput v8, v4, v9

    .line 887
    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_3

    .line 889
    :cond_4
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v4, v9

    .line 890
    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_3

    .line 907
    .end local v2    # "pinRet":[I
    .restart local v6    # "ucsPassword":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "ucs_savein_true"

    goto/16 :goto_1

    .line 920
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 927
    .end local v7    # "uri":Ljava/lang/String;
    :cond_7
    return-object v13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Object;

    .prologue
    .line 936
    check-cast p1, [I

    .end local p1    # "status":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 939
    if-nez p1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    .line 941
    return-void

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 946
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 949
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v1

    const v2, 0x7f1101f5

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 953
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0b0659

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 954
    const-string/jumbo v1, "security.ode.cryptkeeper.status"

    const-string/jumbo v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .end local v0    # "statusView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, p1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 844
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 845
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap1(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 843
    return-void
.end method
