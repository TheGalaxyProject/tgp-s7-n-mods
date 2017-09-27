.class Lcom/android/packageinstaller/UninstallAppProgress$2;
.super Ljava/lang/Object;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/UninstallAppProgress;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/UninstallAppProgress;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 354
    const-string/jumbo v2, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 357
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    .line 351
    return-void
.end method
