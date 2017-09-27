.class Lcom/android/systemui/recents/views/AppInfoViewHolder$1;
.super Ljava/lang/Object;
.source "AppInfoViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/AppInfoViewHolder;->startApp(Lcom/android/systemui/recents/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

.field final synthetic val$appInfo:Lcom/android/systemui/recents/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AppInfoViewHolder;Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/AppInfoViewHolder;
    .param p2, "val$appInfo"    # Lcom/android/systemui/recents/model/AppInfo;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iput-object p2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, v4, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 109
    iget-object v5, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v5, v5, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 108
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v3, "com.google.android.youtube"

    iget-object v4, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, v4, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    :goto_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 117
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->-set0(Lcom/android/systemui/recents/views/AppInfoViewHolder;I)I

    .line 120
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    invoke-static {v3}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->-get0(Lcom/android/systemui/recents/views/AppInfoViewHolder;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    invoke-static {v6}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->-get0(Lcom/android/systemui/recents/views/AppInfoViewHolder;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 126
    :goto_1
    const-string/jumbo v3, "AppInfoViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity - package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v5, v5, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v4, v3, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    .line 128
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    .line 129
    iget-object v4, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, v4, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v5, v5, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    .line 128
    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/misc/AppListUsageStats;->storeCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :goto_2
    return-void

    .line 114
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/high16 v3, 0x10200000

    .line 113
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
