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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11008f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11008e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f11007f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f110084

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mSoftDenyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    const v1, 0x7f110090

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mSoftDenyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public loadInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "ARG_GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;->onPermissionGrantResult(Ljava/lang/String;ZZ)V

    :cond_0
    return-void

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110084 -> :sswitch_0
        0x7f110090 -> :sswitch_1
    .end sparse-switch
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "ARG_GROUP_NAME"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    return-object p0
.end method

.method public updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mHardDenyButton:Landroid/widget/Button;

    if-eqz p6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-le p2, v5, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const v1, 0x7f0d017b

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x7d8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method
