.class public Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ActiveKeySettingDialog.java"


# instance fields
.field mProceedAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1101d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "contentView":Landroid/widget/TextView;
    const v2, 0x7f0b0357

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    return-object v1
.end method

.method private showProceedDialog()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    const v2, 0x7f0b0356

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    .line 46
    const v3, 0x7f0b1109

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$2;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    .line 57
    const v3, 0x7f0b0337

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$3;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->mProceedAlertDialog:Landroid/app/AlertDialog;

    .line 72
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->mProceedAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->showProceedDialog()V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->setupAlert()V

    .line 34
    return-void
.end method
