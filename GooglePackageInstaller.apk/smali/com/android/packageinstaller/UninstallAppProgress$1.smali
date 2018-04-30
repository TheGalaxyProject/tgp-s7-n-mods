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

    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

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

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get4(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-set0(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get2(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/IBinder;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get2(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v10

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

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    return-void

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

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v20, "android.intent.extra.INSTALL_RESULT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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

    const/16 v20, -0x1

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    return-void

    :cond_4
    const/16 v20, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

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

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0169

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110147

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110148

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f110149

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f11014a

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0168

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->-get5(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    return-void

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user"

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    const-string/jumbo v20, "device_policy"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

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

    move-object/from16 v11, v16

    :cond_7
    if-nez v11, :cond_8

    const-string/jumbo v20, "UninstallAppProgress"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Uninstall failed because "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is a device admin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016a

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :catch_0
    move-exception v6

    const-string/jumbo v20, "UninstallAppProgress"

    const-string/jumbo v21, "Failed to talk to package manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

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

    const-string/jumbo v22, " is a device admin of user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016b

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    iget-object v0, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user"

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    const/16 v3, -0x2710

    const/4 v7, 0x0

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    :try_start_2
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v12, v13, v0}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->-wrap0(Lcom/android/packageinstaller/UninstallAppProgress;Landroid/os/UserManager;II)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6
    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016e

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :catch_1
    move-exception v6

    const-string/jumbo v20, "UninstallAppProgress"

    const-string/jumbo v21, "Failed to talk to package manager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get6(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_c
    const/16 v20, -0x2710

    move/from16 v0, v20

    if-ne v3, v0, :cond_d

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

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " no blocking user"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d0169

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/packageinstaller/UninstallAppProgress;->-get0(Lcom/android/packageinstaller/UninstallAppProgress;)Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016c

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v20, v0

    const v21, 0x7f0d016d

    invoke-virtual/range {v20 .. v21}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :catch_2
    move-exception v8

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
