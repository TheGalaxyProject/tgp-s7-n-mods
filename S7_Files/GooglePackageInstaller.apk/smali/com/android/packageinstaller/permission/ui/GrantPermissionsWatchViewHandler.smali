.class final Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;
.super Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;
.source "GrantPermissionsWatchViewHandler.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPageText:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mMessage:Ljava/lang/CharSequence;

.field private mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

.field private mShowDoNotAsk:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private onClick(ZZ)V
    .locals 2
    .param p1, "granted"    # Z
    .param p2, "doNotAskAgain"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mGroupName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;->onPermissionGrantResult(Ljava/lang/String;ZZ)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "GrantPermsWatchViewH"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "GrantPermsWatchViewH"

    const-string/jumbo v1, "createView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mShowDoNotAsk:Z

    .line 54
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->createView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getButtonBarMode()I
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mShowDoNotAsk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPageText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mCurrentPageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPermissionIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getVerticalButton1Icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton1Text()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton2Icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton2Text()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton3Icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalButton3Text()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const-string/jumbo v0, "ARG_GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mGroupName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public onButton1()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->onClick(ZZ)V

    .line 107
    return-void
.end method

.method public onButton2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->onClick(ZZ)V

    .line 112
    return-void
.end method

.method public onButton3()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->onClick(ZZ)V

    .line 117
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const-string/jumbo v0, "ARG_GROUP_NAME"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;
    .locals 0
    .param p1, "listener"    # Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .line 43
    return-object p0
.end method

.method public updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupCount"    # I
    .param p3, "groupIndex"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "showDoNotAsk"    # Z

    .prologue
    const/4 v4, 0x1

    .line 69
    const-string/jumbo v0, "GrantPermsWatchViewH"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "GrantPermsWatchViewH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUi() - groupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string/jumbo v2, ", groupCount: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, ", groupIndex: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string/jumbo v2, ", icon: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string/jumbo v2, ", message: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    const-string/jumbo v2, ", showDoNotAsk: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mGroupName:Ljava/lang/String;

    .line 79
    iput-boolean p6, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mShowDoNotAsk:Z

    .line 80
    iput-object p5, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mMessage:Ljava/lang/CharSequence;

    .line 81
    iput-object p4, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mIcon:Landroid/graphics/drawable/Icon;

    .line 82
    if-le p2, v4, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d017b

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->mCurrentPageText:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsWatchViewHandler;->invalidate()V

    .line 68
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "outLayoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 59
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 62
    const/16 v0, 0x7d8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 63
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    return-void
.end method
