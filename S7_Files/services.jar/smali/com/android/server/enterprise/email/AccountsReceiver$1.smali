.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/email/AccountsReceiver;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v20, "user_handle_id"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 89
    .local v18, "userHandleId":I
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 90
    if-nez v6, :cond_0

    .line 91
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onReceive() : Action is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive() userId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string/jumbo v20, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 98
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.STATUS"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 99
    .local v17, "status":I
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 100
    .local v19, "userId":I
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 101
    .local v4, "accountId":J
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 102
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive() : failed to install cba on accountId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/server/enterprise/email/AccountsReceiver;->-wrap0(Lcom/android/server/enterprise/email/AccountsReceiver;JII)V

    .line 85
    .end local v4    # "accountId":J
    .end local v6    # "action":Ljava/lang/String;
    .end local v17    # "status":I
    .end local v18    # "userHandleId":I
    .end local v19    # "userId":I
    :cond_2
    :goto_0
    return-void

    .line 106
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v18    # "userHandleId":I
    :cond_3
    const-string/jumbo v20, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 107
    const-string/jumbo v20, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 106
    if-eqz v20, :cond_a

    .line 108
    :cond_4
    const-string/jumbo v20, "status"

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 109
    .restart local v17    # "status":I
    const-string/jumbo v20, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "email":Ljava/lang/String;
    const-string/jumbo v20, "service"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, "service":Ljava/lang/String;
    const-string/jumbo v20, "account_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 112
    .local v10, "id":J
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 113
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 114
    if-nez v7, :cond_5

    .line 115
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    :cond_5
    if-nez v16, :cond_6

    .line 118
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 121
    :cond_6
    const-string/jumbo v20, "eas"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 122
    const-string/jumbo v20, "server_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, "serveraddress":Ljava/lang/String;
    if-nez v15, :cond_7

    .line 124
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 128
    :cond_7
    new-instance v14, Landroid/content/Intent;

    .line 129
    const-string/jumbo v20, "edm.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    .line 128
    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v14, "send":Landroid/content/Intent;
    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    const-string/jumbo v20, "server_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 138
    new-instance v12, Landroid/content/Intent;

    .line 139
    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    .line 138
    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v12, "newIntent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 146
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v9

    .line 147
    .local v9, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-eqz v9, :cond_2

    if-nez v17, :cond_2

    const-wide/16 v20, -0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_2

    .line 148
    new-instance v20, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->start()V

    .line 149
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onRecieve() : SMIMECertificate install called."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "email":Ljava/lang/String;
    .end local v9    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v10    # "id":J
    .end local v12    # "newIntent":Landroid/content/Intent;
    .end local v14    # "send":Landroid/content/Intent;
    .end local v15    # "serveraddress":Ljava/lang/String;
    .end local v16    # "service":Ljava/lang/String;
    .end local v17    # "status":I
    .end local v18    # "userHandleId":I
    :catch_0
    move-exception v8

    .line 242
    .local v8, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "onRecieve() failed. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 152
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "email":Ljava/lang/String;
    .restart local v10    # "id":J
    .restart local v16    # "service":Ljava/lang/String;
    .restart local v17    # "status":I
    .restart local v18    # "userHandleId":I
    :cond_8
    :try_start_1
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, "receive_host":Ljava/lang/String;
    if-nez v13, :cond_9

    .line 154
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 157
    :cond_9
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v14    # "send":Landroid/content/Intent;
    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    const-string/jumbo v20, "protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 167
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v12    # "newIntent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 171
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v7    # "email":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "newIntent":Landroid/content/Intent;
    .end local v13    # "receive_host":Ljava/lang/String;
    .end local v14    # "send":Landroid/content/Intent;
    .end local v16    # "service":Ljava/lang/String;
    .end local v17    # "status":I
    :cond_a
    const-string/jumbo v20, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 177
    const-string/jumbo v20, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 176
    if-eqz v20, :cond_2

    .line 178
    :cond_b
    const-string/jumbo v20, "status"

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 179
    .restart local v17    # "status":I
    const-string/jumbo v20, "user_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .restart local v7    # "email":Ljava/lang/String;
    const-string/jumbo v20, "service"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 181
    .restart local v16    # "service":Ljava/lang/String;
    const-string/jumbo v20, "account_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 182
    .restart local v10    # "id":J
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 183
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 184
    if-nez v7, :cond_c

    .line 185
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    :cond_c
    if-nez v16, :cond_d

    .line 188
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 191
    :cond_d
    const-string/jumbo v20, "eas"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 192
    const-string/jumbo v20, "server_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 193
    .restart local v15    # "serveraddress":Ljava/lang/String;
    if-nez v15, :cond_e

    .line 194
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 198
    :cond_e
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v14    # "send":Landroid/content/Intent;
    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string/jumbo v20, "server_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 207
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v12    # "newIntent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v12    # "newIntent":Landroid/content/Intent;
    .end local v14    # "send":Landroid/content/Intent;
    .end local v15    # "serveraddress":Ljava/lang/String;
    :cond_f
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    .restart local v13    # "receive_host":Ljava/lang/String;
    if-nez v13, :cond_10

    .line 218
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 221
    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v14    # "send":Landroid/content/Intent;
    const-string/jumbo v20, "email_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string/jumbo v20, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    const-string/jumbo v20, "protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v20, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 231
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v12    # "newIntent":Landroid/content/Intent;
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v20, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v20, "containerid"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/AccountsReceiver;->-get1(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
