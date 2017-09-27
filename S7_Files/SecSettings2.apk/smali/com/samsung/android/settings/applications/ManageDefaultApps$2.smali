.class Lcom/samsung/android/settings/applications/ManageDefaultApps$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ManageDefaultApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get3(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get5(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 128
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 133
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 138
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 143
    return-void
.end method
