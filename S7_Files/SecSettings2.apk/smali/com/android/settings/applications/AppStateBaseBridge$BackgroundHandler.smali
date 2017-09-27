.class Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/AppStateBaseBridge;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 134
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateBaseBridge;->loadAllExtraInfo()V

    .line 137
    iget-object v6, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v6, v6, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v6, v6, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 142
    .local v0, "N":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, "pkg":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 144
    .local v5, "uid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 146
    .local v1, "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v5, :cond_0

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/settings/applications/AppStateBaseBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    .line 144
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v6, v6, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
