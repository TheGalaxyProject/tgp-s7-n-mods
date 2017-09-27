.class Lcom/android/keyguard/KeyguardBackupRestoreManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupRestoreManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardBackupRestoreManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, "action":Ljava/lang/String;
    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive ( action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v17, :cond_0

    .line 86
    :try_start_0
    const-string/jumbo v1, "SAVE_PATH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "basePath":Ljava/lang/String;
    const-string/jumbo v1, "SOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "source":Ljava/lang/String;
    const-string/jumbo v1, "SESSION_KEY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 89
    .local v16, "saveKey":Ljava/lang/String;
    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "sessionTime":Ljava/lang/String;
    const-string/jumbo v1, "ACTION"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 91
    .local v19, "extraAction":I
    const-string/jumbo v1, "SECURITY_LEVEL"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 93
    .local v14, "securityLevel":I
    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get0(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get0(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    const-string/jumbo v2, "stop backup working thread for lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get0(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-set0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-wrap0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v7    # "source":Ljava/lang/String;
    .end local v8    # "sessionTime":Ljava/lang/String;
    .end local v12    # "basePath":Ljava/lang/String;
    .end local v14    # "securityLevel":I
    .end local v16    # "saveKey":Ljava/lang/String;
    .end local v19    # "extraAction":I
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v7    # "source":Ljava/lang/String;
    .restart local v8    # "sessionTime":Ljava/lang/String;
    .restart local v12    # "basePath":Ljava/lang/String;
    .restart local v14    # "securityLevel":I
    .restart local v16    # "saveKey":Ljava/lang/String;
    .restart local v19    # "extraAction":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    new-instance v2, Ljava/lang/Thread;

    new-instance v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-set0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get0(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v7    # "source":Ljava/lang/String;
    .end local v8    # "sessionTime":Ljava/lang/String;
    .end local v12    # "basePath":Ljava/lang/String;
    .end local v14    # "securityLevel":I
    .end local v16    # "saveKey":Ljava/lang/String;
    .end local v19    # "extraAction":I
    :catch_0
    move-exception v18

    .line 152
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v7    # "source":Ljava/lang/String;
    .restart local v8    # "sessionTime":Ljava/lang/String;
    .restart local v12    # "basePath":Ljava/lang/String;
    .restart local v14    # "securityLevel":I
    .restart local v16    # "saveKey":Ljava/lang/String;
    .restart local v19    # "extraAction":I
    :cond_2
    :try_start_1
    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    new-instance v20, Ljava/lang/Thread;

    new-instance v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$2;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v7

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$2;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    .local v20, "restoreThread":Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 121
    .end local v20    # "restoreThread":Ljava/lang/Thread;
    :cond_3
    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get1(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get1(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    const-string/jumbo v2, "stop backup working thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get1(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-set1(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-wrap0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    new-instance v2, Ljava/lang/Thread;

    new-instance v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$3;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$3;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-set1(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->-get1(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 141
    :cond_5
    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v20, Ljava/lang/Thread;

    new-instance v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$4;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v7

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$4;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    .restart local v20    # "restoreThread":Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
