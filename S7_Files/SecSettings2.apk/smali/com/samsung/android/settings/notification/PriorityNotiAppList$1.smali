.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v25

    monitor-enter v25

    .line 171
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 172
    .local v22, "start":J
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_0

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "Collecting apps..."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->clear()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v5, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    if-nez v24, :cond_1

    monitor-exit v25

    return-void

    .line 179
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 181
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get9(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v24

    .line 182
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v26

    .line 181
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v15

    .line 183
    .local v15, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_2

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "  launchable activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "lai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    .line 185
    .local v13, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_3

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 187
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 188
    .local v10, "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v14    # "lai$iterator":Ljava/util/Iterator;
    .end local v15    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "start":J
    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    .line 192
    .restart local v5    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v14    # "lai$iterator":Ljava/util/Iterator;
    .restart local v15    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "start":J
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get10(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v18

    .line 193
    .local v18, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_5

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "  config activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v19, "ri":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_6

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 196
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 195
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 196
    const-string/jumbo v27, "/"

    .line 195
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 196
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 195
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 199
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v8, v0, :cond_c

    .line 204
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 205
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get1(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    aget-object v16, v26, v24

    .line 206
    .local v16, "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 207
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    add-int/lit8 v8, v8, -0x1

    .line 213
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get2(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    aget-object v16, v26, v24

    .line 215
    .restart local v16    # "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 216
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    add-int/lit8 v8, v8, -0x1

    .line 203
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 205
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 214
    :cond_b
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 224
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 225
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 226
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get10(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get4(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v9, v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    move-result-object v21

    .line 232
    .local v21, "row":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 235
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "key":Ljava/lang/String;
    .end local v21    # "row":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get10(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12()Ljava/util/Comparator;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get11(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v6, v26, v22

    .line 251
    .local v6, "elapsed":J
    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_f

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Collected "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " apps in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mSortedRows.size=="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    monitor-exit v25

    .line 169
    return-void
.end method
