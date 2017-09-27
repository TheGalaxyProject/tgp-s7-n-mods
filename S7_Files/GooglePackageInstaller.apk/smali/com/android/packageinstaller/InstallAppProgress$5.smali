.class Lcom/android/packageinstaller/InstallAppProgress$5;
.super Ljava/lang/Object;
.source "InstallAppProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/InstallAppProgress;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;

.field final synthetic val$params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/InstallAppProgress;
    .param p2, "val$pm"    # Landroid/content/pm/PackageManager;
    .param p3, "val$params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iput-object p2, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->val$params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress$5;->val$params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap2(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V

    .line 378
    return-void
.end method
