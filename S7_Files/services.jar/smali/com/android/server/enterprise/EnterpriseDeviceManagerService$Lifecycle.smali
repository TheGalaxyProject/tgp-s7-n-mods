.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 294
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 292
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap8(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V

    .line 308
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 353
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 300
    const-string/jumbo v0, "enterprise_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 299
    return-void
.end method

.method public onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap4(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap9(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 317
    return-void
.end method

.method public onStopUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 344
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap9(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 334
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 326
    return-void
.end method
