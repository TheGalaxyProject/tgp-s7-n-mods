.class public final Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;
.super Ljava/lang/Object;
.source "GrantPermissionsViewHandlerImpl.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllowButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mCurrentGroupView:Landroid/widget/TextView;

.field private mGroupName:Ljava/lang/String;

.field private mHardDenyButton:Landroid/widget/Button;

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageView:Landroid/widget/TextView;

.field private mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSoftDenyButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    const v1, 0x7f03001f

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11008f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11008e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11007f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f110084

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mSoftDenyButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f110090

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mSoftDenyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public loadInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string/jumbo v0, "ARG_GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "granted":Z
    const/4 v0, 0x0

    .line 112
    .local v0, "doNotAskAgain":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;->onPermissionGrantResult(Ljava/lang/String;ZZ)V

    .line 109
    :cond_0
    return-void

    .line 114
    :sswitch_0
    const/4 v1, 0x1

    .line 115
    goto :goto_0

    .line 117
    :sswitch_1
    const/4 v0, 0x1

    .line 118
    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110084 -> :sswitch_0
        0x7f110090 -> :sswitch_1
    .end sparse-switch
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const-string/jumbo v0, "ARG_GROUP_NAME"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;
    .locals 0
    .param p1, "listener"    # Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .line 48
    return-object p0
.end method

.method public updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupCount"    # I
    .param p3, "groupIndex"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "showDoNotAsk"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 88
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    if-eqz p6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    if-le p2, v5, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    .line 91
    const v1, 0x7f0d017b

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "outLayoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 73
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 76
    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    const/16 v0, 0x7d8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    return-void
.end method
