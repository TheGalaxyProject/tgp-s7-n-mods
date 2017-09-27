.class public final Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field private static final SALES_CODE:Ljava/lang/String;


# instance fields
.field private mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private mNeedDialogDismiss:Z

.field private mNewDefault:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->OMC_SALES_CODE:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->CSC_SALES_CODE:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->SALES_CODE:Ljava/lang/String;

    .line 41
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNeedDialogDismiss:Z

    .line 41
    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 113
    :cond_0
    const-string/jumbo v9, "PaymentDefaultDialog"

    const-string/jumbo v10, "Component or category are null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v12

    .line 117
    :cond_1
    const-string/jumbo v9, "payment"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 118
    const-string/jumbo v9, "PaymentDefaultDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Don\'t support defaults for category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v12

    .line 123
    :cond_2
    const/4 v5, 0x0

    .line 124
    .local v5, "requestedPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    const/4 v1, 0x0

    .line 126
    .local v1, "defaultPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v8

    .line 127
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v1    # "defaultPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v5    # "requestedPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .local v7, "service$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 128
    .local v6, "service":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v9, v6, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 129
    move-object v5, v6

    .line 131
    :cond_4
    iget-boolean v9, v6, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v9, :cond_3

    .line 132
    move-object v1, v6

    .local v1, "defaultPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    goto :goto_0

    .line 136
    .end local v1    # "defaultPaymentApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v6    # "service":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_5
    if-nez v5, :cond_6

    .line 137
    const-string/jumbo v9, "PaymentDefaultDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not a registered payment service."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v12

    .line 142
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "defaultComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    const-string/jumbo v9, "PaymentDefaultDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is already default."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v12

    .line 148
    :cond_7
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    .line 150
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 151
    .local v4, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-nez v1, :cond_8

    .line 152
    const v9, 0x7f0b188c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "formatString":Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/Object;

    .line 154
    iget-object v10, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 153
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "msg":Ljava/lang/String;
    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 156
    const v9, 0x7f0b188b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 157
    const v9, 0x7f0b042c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 167
    :goto_1
    const v9, 0x7f0b102d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 168
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->setupAlert()V

    .line 172
    return v11

    .line 159
    .end local v2    # "formatString":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_8
    const v9, 0x7f0b188d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "formatString":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 161
    iget-object v10, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 162
    iget-object v10, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 160
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "msg":Ljava/lang/String;
    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 164
    const v9, 0x7f0b0956

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 165
    const v9, 0x7f0b0957

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x20

    .line 176
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "sanitizedString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v0, "KDI"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SBM"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNeedDialogDismiss:Z

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNeedDialogDismiss:Z

    .line 104
    return-void

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 99
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string/jumbo v0, "KDI"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SBM"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentAppFromDefaultDialog(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNeedDialogDismiss:Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v3, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "component"

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 66
    .local v1, "component":Landroid/content/ComponentName;
    const-string/jumbo v3, "category"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "category":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 69
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->finish()V

    .line 60
    :cond_0
    return-void
.end method
