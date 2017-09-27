.class public Lcom/samsung/android/settings/nfc/PaymentBackend;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field private static final SALES_CODE:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private mAppName:Landroid/content/ComponentName;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    .line 72
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->CSC_SALES_CODE:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    .line 53
    return-void

    .line 74
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 82
    return-void
.end method

.method private setDefaultPayment(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "listenerFlag"    # Z

    .prologue
    .line 285
    const/4 v0, 0x1

    .line 286
    .local v0, "needDialogDismiss":Z
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v3, "payment"

    invoke-virtual {v2, p1, v3}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "retval":I
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Settings.PaymentBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    retval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/16 v2, 0x3e8

    if-gt v2, v1, :cond_1

    .line 289
    const/16 v2, 0x1fa5

    if-ne v1, v2, :cond_2

    .line 291
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    .line 304
    .end local v0    # "needDialogDismiss":Z
    :cond_1
    :goto_0
    return v0

    .line 292
    .restart local v0    # "needDialogDismiss":Z
    :cond_2
    const/16 v2, 0x244c

    if-eq v1, v2, :cond_1

    .line 294
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x23c1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x244b

    if-ne v1, v2, :cond_4

    .line 296
    :cond_3
    const v2, 0x7f0b1bb4

    .line 295
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    move-result v0

    .local v0, "needDialogDismiss":Z
    goto :goto_0

    .line 300
    .local v0, "needDialogDismiss":Z
    :cond_4
    const v2, 0x7f0b1bb5

    .line 299
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    move-result v0

    .local v0, "needDialogDismiss":Z
    goto :goto_0
.end method

.method private showErrorDialog(IZ)Z
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "listenerFlag"    # Z

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz p2, :cond_0

    .line 261
    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentBackend$1;

    .end local v1    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    .line 272
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 274
    const v3, 0x104000a

    .line 272
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 276
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 278
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ActionRetry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    const-string/jumbo v3, "payment"

    invoke-virtual {v1, v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "retval":I
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Settings.PaymentBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    retval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    const/16 v1, 0x3e8

    if-gt v1, v0, :cond_5

    .line 238
    const/16 v1, 0x1fa5

    if-ne v0, v1, :cond_2

    .line 239
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Settings.PaymentBackend"

    const-string/jumbo v2, "pin verification is needed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    const/16 v1, 0x23c1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x244b

    if-ne v0, v1, :cond_4

    .line 242
    :cond_3
    const v1, 0x7f0b1bb4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_0

    .line 244
    :cond_4
    const v1, 0x7f0b1bb5

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z

    goto :goto_0

    .line 247
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getDefaultApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    return-object v0
.end method

.method getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 185
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 184
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "componentString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 189
    :cond_0
    return-object v3
.end method

.method public getPaymentAppInfos()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 99
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 101
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v11, "payment"

    invoke-virtual {v10, v11}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-nez v8, :cond_0

    return-object v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v3

    .line 107
    .local v3, "defaultAppName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 109
    .local v4, "foundDefaultApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v4    # "foundDefaultApp":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .local v7, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 110
    .local v6, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 111
    .local v0, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {v6, v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 112
    iget-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-nez v10, :cond_1

    .line 113
    invoke-virtual {v6, v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 117
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 118
    const-string/jumbo v10, "DCM"

    sget-object v11, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    :cond_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 124
    :goto_1
    iget-boolean v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v10, :cond_3

    .line 125
    move-object v4, v0

    .line 128
    :cond_3
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 129
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "settingsActivity":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 131
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    .line 136
    :goto_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v6, v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_4

    .line 140
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/nfc/NfcAdapter;->loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 142
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 145
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    .end local v9    # "settingsActivity":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 120
    const-string/jumbo v12, "payment"

    .line 119
    invoke-virtual {v10, v11, v12}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    goto :goto_1

    .line 134
    .restart local v9    # "settingsActivity":Ljava/lang/String;
    :cond_6
    iput-object v13, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    goto :goto_2

    .line 147
    .end local v0    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v6    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v9    # "settingsActivity":Ljava/lang/String;
    :cond_7
    iput-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mDefaultAppInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 149
    return-object v1
.end method

.method isForegroundMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "nfc_payment_foreground"

    .line 171
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 195
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Settings.PaymentBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultPaymentApp In / ComponentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/samsung/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 204
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    :goto_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentBackend;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Settings.PaymentBackend"

    const-string/jumbo v1, "setDefaultPaymentApp Out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    return-void

    .line 199
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPayment(Landroid/content/ComponentName;Z)Z

    goto :goto_0
.end method

.method public setDefaultPaymentAppFromDefaultDialog(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    return v2

    .line 218
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPayment(Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method setForegroundMode(Z)V
    .locals 3
    .param p1, "foreground"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 180
    const-string/jumbo v2, "nfc_payment_foreground"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 179
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
