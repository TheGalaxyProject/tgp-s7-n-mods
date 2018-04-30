.class Lcom/android/packageinstaller/UninstallAppProgress$3;
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

    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$3;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$3;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$3;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    return-void
.end method
