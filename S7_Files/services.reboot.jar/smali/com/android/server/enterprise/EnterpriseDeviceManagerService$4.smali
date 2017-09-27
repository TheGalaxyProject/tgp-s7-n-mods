.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field final synthetic val$admins:[Ljava/lang/String;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p2, "val$admins"    # [Ljava/lang/String;
    .param p3, "val$apkFile"    # Ljava/io/File;

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    .line 2139
    monitor-enter p0

    .line 2140
    if-ne p2, v6, :cond_0

    .line 2141
    :try_start_0
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "packageInstalled"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "Activate Admin for new apk"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-get1()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2152
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2153
    .local v0, "compNames":Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 2154
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 2155
    .local v0, "compNames":Ljava/lang/String;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2147
    .end local v0    # "compNames":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 2148
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "Activate Admin for new apk failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2159
    .local v0, "compNames":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 2162
    .end local v0    # "compNames":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string/jumbo v3, "self_update_admin_component"

    .line 2163
    const-string/jumbo v4, "/data/system/selfUpdateAdmin.conf"

    .line 2162
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2165
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2167
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-set2(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 2169
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap6(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 2138
    return-void
.end method
