.class public Lcom/samsung/android/settings/nfc/AndroidBeam;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/AndroidBeam$1;,
        Lcom/samsung/android/settings/nfc/AndroidBeam$2;
    }
.end annotation


# static fields
.field private static ANDROID_BEAM_ON_OFF:I

.field static final DBG:Z


# instance fields
.field private activity:Lcom/android/settings/SettingsActivity;

.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/AndroidBeam;ZZ)V
    .locals 0
    .param p1, "isenabled"    # Z
    .param p2, "ischecked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/AndroidBeam;->setSwitchStatus(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/AndroidBeam;->DBG:Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    .line 96
    new-instance v0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v0, Lcom/samsung/android/settings/nfc/AndroidBeam$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$2;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 78
    return-void
.end method

.method private allowAndroidBeam()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 306
    const/4 v6, 0x1

    .line 308
    .local v6, "allowAbeam":Z
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    const-string/jumbo v3, "isAndroidBeamAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    .local v8, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 314
    :try_start_0
    const-string/jumbo v0, "isAndroidBeamAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v6, 0x0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_1
    :goto_0
    return v6

    .line 319
    :catch_0
    move-exception v7

    .line 320
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 321
    throw v0
.end method

.method private makeAlertDialog()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0970

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 333
    const v1, 0x7f0b0972

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 334
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$3;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$4;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$5;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 329
    return-void
.end method

.method private populateViewForOrientation()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->startAnimation()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f110139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 180
    .local v1, "sv":Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    .local v0, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 183
    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 187
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSwitchStatus(ZZ)V
    .locals 1
    .param p1, "isenabled"    # Z
    .param p2, "ischecked"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 354
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "androidImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11013d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "androidImage":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .local v0, "androidImage":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 201
    .local v1, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 192
    return-void

    .line 197
    .end local v1    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    .local v0, "androidImage":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "androidImage":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .local v0, "androidImage":Landroid/widget/ImageView;
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string/jumbo v1, "AndroidBeamSettings"

    const-string/jumbo v3, "onActivityCreated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 217
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 226
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 220
    goto :goto_1

    .line 222
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 134
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 135
    const v1, 0x7f0b0944

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 140
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 147
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 149
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 149
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    .line 152
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    const v1, 0x7f040027

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-static {v1, v2, v0, v4}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v1

    .line 160
    :cond_0
    const v1, 0x7f04002e

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 267
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NfcAndroidBeamSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 251
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->allowAndroidBeam()Z

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "NfcAndroidBeamSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 240
    :cond_1
    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "success":Z
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->allowAndroidBeam()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    if-eqz p2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 295
    .end local v0    # "success":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 296
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/nfc/AndroidBeam;->ANDROID_BEAM_ON_OFF:I

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/nfc/AndroidBeam;->ANDROID_BEAM_ON_OFF:I

    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 281
    return-void

    .line 289
    .restart local v0    # "success":Z
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    .local v0, "success":Z
    goto :goto_0
.end method
