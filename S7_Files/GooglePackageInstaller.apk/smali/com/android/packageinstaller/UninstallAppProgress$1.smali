.class Lcom/android/packageinstaller/UninstallAppProgress$1;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/UninstallAppProgress;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->isFinishing()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->isDestroyed()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 97
    :cond_0
    return-void

    .line 100
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 102
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    goto :goto_0

    .line 105
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get4(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-set0(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    .line 112
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 114
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get2(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/IBinder;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get2(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/IBinder;

    move-result-object v20

    .line 115
    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v10

    .line 118
    .local v10, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get1(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1, v13}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    .line 123
    return-void

    .line 126
    .end local v10    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string/jumbo v21, "android.intent.extra.RETURN_RESULT"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 127
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v14, "result":Landroid/content/Intent;
    const-string/jumbo v20, "android.intent.extra.INSTALL_RESULT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 130
    const/16 v20, -0x1

    .line 129
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(ILandroid/content/Intent;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    .line 133
    return-void

    .line 130
    :cond_4
    const/16 v20, 0x1

    goto :goto_2

    .line 138
    .end local v14    # "result":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 226
    :pswitch_2
    const-string/jumbo v20, "UninstallAppProgress"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Uninstall failed for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with code "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 227
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 226
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0169

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, "statusText":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110147

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110148

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110149

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f11014a

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    .end local v15    # "statusText":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0168

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    .restart local v15    # "statusText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 143
    .local v4, "ctx":Landroid/content/Context;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    .line 145
    return-void

    .line 148
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v15    # "statusText":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user"

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 150
    .local v18, "userManager":Landroid/os/UserManager;
    const-string/jumbo v20, "device_policy"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    .line 149
    invoke-static/range {v20 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    .line 152
    .local v5, "dpm":Landroid/app/admin/IDevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 153
    .local v9, "myUserId":I
    const/4 v11, 0x0

    .line 154
    .local v11, "otherBlockingUser":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "user$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 157
    .local v16, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Lcom/android/packageinstaller/UninstallAppProgress;->-wrap0(Lcom/android/packageinstaller/UninstallAppProgress;Landroid/os/UserManager;II)Z

    move-result v20

    if-nez v20, :cond_6

    .line 160
    :try_start_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v13, v0}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-eqz v20, :cond_6

    .line 161
    move-object/from16 v11, v16

    .line 168
    .end local v11    # "otherBlockingUser":Landroid/content/pm/UserInfo;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    if-nez v11, :cond_8

    .line 169
    const-string/jumbo v20, "UninstallAppProgress"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Uninstall failed because "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 170
    const-string/jumbo v22, " is a device admin"

    .line 169
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    .line 173
    const v21, 0x7f0d016a

    .line 172
    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 164
    .end local v15    # "statusText":Ljava/lang/String;
    .restart local v11    # "otherBlockingUser":Landroid/content/pm/UserInfo;
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v20, "UninstallAppProgress"

    const-string/jumbo v21, "Failed to talk to package manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 175
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v11    # "otherBlockingUser":Landroid/content/pm/UserInfo;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    const-string/jumbo v20, "UninstallAppProgress"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Uninstall failed because "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 176
    const-string/jumbo v22, " is a device admin of user "

    .line 175
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016b

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 178
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 180
    iget-object v0, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 178
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 186
    .end local v5    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    .end local v9    # "myUserId":I
    .end local v15    # "statusText":Ljava/lang/String;
    .end local v17    # "user$iterator":Ljava/util/Iterator;
    .end local v18    # "userManager":Landroid/os/UserManager;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user"

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 188
    .restart local v18    # "userManager":Landroid/os/UserManager;
    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    .line 187
    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 189
    .local v12, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    .line 190
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v3, -0x2710

    .line 191
    .local v3, "blockingUserId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 192
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 195
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    :try_start_2
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    .line 194
    move/from16 v0, v20

    invoke-interface {v12, v13, v0}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 196
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 205
    .restart local v9    # "myUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->-wrap0(Lcom/android/packageinstaller/UninstallAppProgress;Landroid/os/UserManager;II)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    :goto_6
    if-nez v3, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016e

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 199
    .end local v9    # "myUserId":I
    .end local v15    # "statusText":Ljava/lang/String;
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v6

    .line 201
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v20, "UninstallAppProgress"

    const-string/jumbo v21, "Failed to talk to package manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 208
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    .restart local v9    # "myUserId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get6(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 214
    :cond_c
    const/16 v20, -0x2710

    move/from16 v0, v20

    if-ne v3, v0, :cond_d

    .line 215
    const-string/jumbo v20, "UninstallAppProgress"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Uninstall failed for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with code "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 216
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 215
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 216
    const-string/jumbo v22, " no blocking user"

    .line 215
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0169

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 219
    .end local v15    # "statusText":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get0(Lcom/android/packageinstaller/UninstallAppProgress;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016c

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 221
    .end local v15    # "statusText":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016d

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "statusText":Ljava/lang/String;
    goto/16 :goto_3

    .line 120
    .end local v3    # "blockingUserId":I
    .end local v7    # "i":I
    .end local v9    # "myUserId":I
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v15    # "statusText":Ljava/lang/String;
    .end local v18    # "userManager":Landroid/os/UserManager;
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v10    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :catch_2
    move-exception v8

    .local v8, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
