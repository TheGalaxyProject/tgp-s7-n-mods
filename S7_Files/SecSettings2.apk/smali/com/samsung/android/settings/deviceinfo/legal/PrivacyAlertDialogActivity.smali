.class public Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1101d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "contentView":Landroid/widget/TextView;
    const v2, 0x7f0b052c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 63
    const-string/jumbo v2, "com.samsung.android.settings.deviceinfo.legal.PrivacyAlertProceedDialogActivity"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->finish()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b0ea3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 44
    const v1, 0x7f0b052d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 45
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    const v1, 0x7f0b1105

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 47
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->setupAlert()V

    .line 38
    return-void
.end method
