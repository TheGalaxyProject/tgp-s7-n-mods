.class Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "RCPPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/RCPPolicyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    const-string/jumbo v4, "RCPPolicyProvider"

    const-string/jumbo v5, "onReceive() KNOX SETUP COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v4, "userid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "userId":I
    if-lt v2, v7, :cond_1

    if-gt v2, v8, :cond_1

    .line 170
    .local v1, "isPersona":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get1(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get0()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 164
    .end local v1    # "isPersona":Z
    .end local v2    # "userId":I
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "userId":I
    :cond_1
    move v1, v3

    .line 169
    goto :goto_0

    .line 173
    .end local v2    # "userId":I
    :cond_2
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string/jumbo v4, "RCPPolicyProvider"

    const-string/jumbo v5, "onReceive() USER REMOVED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .restart local v2    # "userId":I
    if-lt v2, v7, :cond_3

    if-gt v2, v8, :cond_3

    .line 177
    .restart local v1    # "isPersona":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get1(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get0()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .end local v1    # "isPersona":Z
    :cond_3
    move v1, v3

    .line 176
    goto :goto_2
.end method
