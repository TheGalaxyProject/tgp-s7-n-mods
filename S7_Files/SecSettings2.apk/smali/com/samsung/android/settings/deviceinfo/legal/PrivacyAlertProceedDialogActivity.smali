.class public Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"


# instance fields
.field mProceedAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040074

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 74
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1101d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, "contentView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 77
    const-string/jumbo v7, "db_chameleon_brandalpha"

    .line 76
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "carrierBrandalpha":Ljava/lang/String;
    const v6, 0x7f0b0531

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "defaultBrandalpha":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    .line 82
    const-string/jumbo v7, "CscFeature_Common_UseChameleon"

    .line 81
    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    if-nez v0, :cond_1

    .line 89
    :cond_0
    const-string/jumbo v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use default legal message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const v6, 0x7f0b052f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "contentText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-object v5

    .line 84
    .end local v2    # "contentText":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 81
    if-nez v6, :cond_0

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 81
    if-nez v6, :cond_0

    .line 86
    const-string/jumbo v6, "Samsung"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 81
    if-nez v6, :cond_0

    .line 87
    const-string/jumbo v6, "Chameleon"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 81
    if-nez v6, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 94
    const-string/jumbo v7, "db_chameleon_carrierhomepage"

    .line 93
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "carrierHomepage":Ljava/lang/String;
    const-string/jumbo v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "legal message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v1, :cond_2

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    :cond_2
    const v6, 0x7f0b0530

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_3
    const v6, 0x7f0b052e

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 100
    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    .line 99
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentText":Ljava/lang/String;
    goto :goto_0
.end method

.method private showProceedDialog()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    const v2, 0x7f0b0ea3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 55
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$1;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->mProceedAlertDialog:Landroid/app/AlertDialog;

    .line 69
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->mProceedAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->showProceedDialog()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->setupAlert()V

    .line 43
    return-void
.end method
