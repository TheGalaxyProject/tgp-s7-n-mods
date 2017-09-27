.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "mReason":I
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 146
    .local v1, "mIsDND":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    .line 149
    :cond_0
    if-ne v2, v6, :cond_1

    if-eqz v1, :cond_4

    .line 161
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b09c7

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 144
    .end local v1    # "mIsDND":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mIsDND":Z
    goto :goto_0

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    .line 149
    if-eqz v3, :cond_1

    .line 151
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b09c2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 154
    const v3, 0x7f0b09c3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 155
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 158
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b09c4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 166
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b09c8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
