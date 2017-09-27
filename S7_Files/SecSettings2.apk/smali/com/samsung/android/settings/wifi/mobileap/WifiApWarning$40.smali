.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    .line 1679
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1680
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "dontshowmemhsfirsttime"

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1682
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1683
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 1678
    :goto_0
    return-void

    .line 1685
    :cond_1
    const/4 v1, 0x0

    .line 1688
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1689
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1690
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v2, "pickIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1692
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_tmo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1707
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Exception!! help NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    goto :goto_0

    .line 1694
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_mtr"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1698
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1699
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1700
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1701
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1704
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Help info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
