.class Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;
.super Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;
.source "WarningConfirmationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    invoke-direct {p0, p2}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getButtonBarMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPageText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->-get0(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalButton1Icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton1Text()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton2Icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton2Text()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton3Icon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalButton3Text()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onButton1()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->-wrap0(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;I)V

    return-void
.end method

.method public onButton2()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;->-wrap0(Lcom/android/packageinstaller/permission/ui/wear/WarningConfirmationActivity;I)V

    return-void
.end method

.method public onButton3()V
    .locals 0

    return-void
.end method
