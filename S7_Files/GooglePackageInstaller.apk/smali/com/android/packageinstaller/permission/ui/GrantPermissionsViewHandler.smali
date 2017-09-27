.class public interface abstract Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;
.super Ljava/lang/Object;
.source "GrantPermissionsViewHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;
    }
.end annotation


# virtual methods
.method public abstract createView()Landroid/view/View;
.end method

.method public abstract loadInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract saveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
.end method

.method public abstract updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
.end method
