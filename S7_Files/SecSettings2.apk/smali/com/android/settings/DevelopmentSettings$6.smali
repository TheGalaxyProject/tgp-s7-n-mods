.class Lcom/android/settings/DevelopmentSettings$6;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->confirmResetShortcutManagerThrottling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;

.field final synthetic val$service:Landroid/content/pm/IShortcutService;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;Landroid/content/pm/IShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DevelopmentSettings;
    .param p2, "val$service"    # Landroid/content/pm/IShortcutService;

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$6;->this$0:Lcom/android/settings/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings/DevelopmentSettings$6;->val$service:Landroid/content/pm/IShortcutService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2539
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2541
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$6;->val$service:Landroid/content/pm/IShortcutService;

    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2542
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
