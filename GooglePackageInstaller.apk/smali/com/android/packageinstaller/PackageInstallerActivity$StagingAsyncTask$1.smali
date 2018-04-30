.class Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f11007b

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d01a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f110095

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d01a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x1020012

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f110054

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f110099

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x1010429

    invoke-static {v1, v0, v2}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask$1;->this$1:Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const v2, 0x7f11007a

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
